ASM         := rgbasm
LINK        := rgblink
FIX         := rgbfix

FILE_NAME   := cvlegends
ROM         := $(FILE_NAME).gb
GFX_DIR     := gfx
BUILD_DIR   := build
OBJECT_FILE := $(BUILD_DIR)/$(FILE_NAME).o

# compare by default for now
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

$(OBJECT_FILE): $(BUILD_DIR) $(FILE_NAME).asm bank_*.asm $(IMAGE_DEPS)
	$(ASM) -o $@ $(FILE_NAME).asm

$(ROM): $(OBJECT_FILE)
	$(LINK) -n $(FILE_NAME).sym -m $(FILE_NAME).map -o $@ $<
	$(FIX) -v -p 255 $@
ifeq ($(COMPARE),1)
	@$(SHA1) -c rom.sha1
endif

clean: tidy
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

tidy:	
	rm -rf $(BUILD_DIR)/ $(ROM) $(FILE_NAME).sym $(FILE_NAME).map
