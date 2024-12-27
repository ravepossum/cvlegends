IMAGE_DEPS = gfx/image_004_4190.2bpp gfx/image_004_4290.2bpp gfx/image_004_4570.2bpp gfx/image_004_47b0.2bpp gfx/image_004_4bb0.2bpp gfx/image_005_51dc.2bpp gfx/image_005_58dc.2bpp gfx/image_005_59dc.2bpp gfx/image_005_62dc.2bpp gfx/image_005_699c.2bpp gfx/image_005_6a9c.2bpp gfx/image_007_4080.2bpp gfx/image_007_4140.2bpp gfx/image_007_5140.2bpp gfx/image_00a_4eac.2bpp gfx/image_00a_5094.2bpp gfx/image_00a_5394.2bpp gfx/image_00b_4ed9.2bpp gfx/image_00b_53d9.2bpp

all: cvlegends.gb

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

cvlegends.o: cvlegends.asm bank_*.asm $(IMAGE_DEPS)
	rgbasm -o cvlegends.o cvlegends.asm

cvlegends.gb: cvlegends.o
	rgblink -n cvlegends.sym -m cvlegends.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f cvlegends.o cvlegends.gb cvlegends.sym cvlegends.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +