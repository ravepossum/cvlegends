# tools
ASM         := rgbasm
LINK        := rgblink
FIX         := rgbfix

# build vars
FILE_NAME    := cvlegends
ROM          := $(FILE_NAME).gb
ASM_DIR      := asm
GFX_DIR      := gfx
BUILD_DIR    := build
OBJECT_FILE  := $(BUILD_DIR)/$(FILE_NAME).o
LINKERSCRIPT := layout.link

# header options
TITLE         := "CASTLEVANIA"
PUBLISHER     := A4
MBC           := MBC1
RAM_SIZE      := 0
OLD_PUBLISHER := 0x33
ROM_VERSION   := 0

# build options
COMPARE     ?= 1

ifeq (compare,$(MAKECMDGOALS))
  COMPARE := 1
endif

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

IMAGE_DEPS  := 
include graphics_rules.mk

.PHONY: all clean compare

all: $(ROM)

compare: all

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

$(BUILD_DIR):
	@mkdir $@

$(OBJECT_FILE): $(BUILD_DIR) $(FILE_NAME).asm $(ASM_DIR)/*.asm $(IMAGE_DEPS)
	$(ASM) -o $@ $(FILE_NAME).asm

FIX_OPTIONS := -t $(TITLE) -k $(PUBLISHER) -m $(MBC) -r $(RAM_SIZE) -l $(OLD_PUBLISHER) -n $(ROM_VERSION) -jsv -p 0xFF

$(ROM): $(OBJECT_FILE)
	$(LINK) -n $(FILE_NAME).sym -m $(FILE_NAME).map -l $(LINKERSCRIPT) -o $@ $<
	$(FIX) $(FIX_OPTIONS) $@
ifeq ($(COMPARE),1)
	@$(SHA1) -c rom.sha1
endif

clean: tidy
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

tidy:	
	rm -rf $(BUILD_DIR)/ $(ROM) $(FILE_NAME).sym $(FILE_NAME).map
