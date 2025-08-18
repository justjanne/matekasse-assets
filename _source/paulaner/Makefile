.PHONY: all
all: ../../paulaner/limo-orange-330.png \
../../paulaner/limo-orange-500.png \
../../paulaner/limo-orange-500@2.png \
../../paulaner/limo-zitrone-330.png \
../../paulaner/limo-zitrone-500.png \
../../paulaner/limo-zitrone-500@2.png \
../../paulaner/spezi-330.png \
../../paulaner/spezi-500.png \
../../paulaner/spezi-500@2.png \
../../paulaner/spezi-zero-330.png \
../../paulaner/spezi-zero-500.png \
../../paulaner/spezi-zero-500@2.png

../../paulaner/%@2.png: %.png
	magick $< -colorspace RGB -resize 1120x1120 -colorspace sRGB -background transparent -gravity center -extent 1280x1280 $@

../../paulaner/%.png: %.png
	magick $< -colorspace RGB -resize 560x560 -colorspace sRGB -background transparent -gravity center -extent 640x640 $@
