# 200 1440x5591 + 1682x873
# 6390 +473
# 330 1494x5949 + 1662x778
# 6798 +353
# 500 1568x6223 + 1616x787
# 7112 +342

.PHONY: all
all: ../../fritz/anjola-200.png \
../../fritz/anjola-330.png \
../../fritz/kola-200.png \
../../fritz/kola-330.png \
../../fritz/kola-500.png \
../../fritz/kola-bio-330.png \
../../fritz/kola-superzero-200.png \
../../fritz/kola-superzero-330.png \
../../fritz/kola-superzero-500.png \
../../fritz/kola-zero-200.png \
../../fritz/kola-zero-330.png \
../../fritz/kola-zero-500.png \
../../fritz/apfel-kirsch-holunder-200.png \
../../fritz/apfel-kirsch-holunder-330.png \
../../fritz/melone-200.png \
../../fritz/melone-330.png \
../../fritz/ingwer-limette-330.png \
../../fritz/orange-200.png \
../../fritz/orange-330.png \
../../fritz/orange-500.png \
../../fritz/zitrone-200.png \
../../fritz/zitrone-330.png \
../../fritz/zitrone-500.png \
../../fritz/mischmasch-200.png \
../../fritz/mischmasch-330.png \
../../fritz/mischmasch-500.png \
../../fritz/mischmasch-superzero-330.png \
../../fritz/apfel-200.png \
../../fritz/apfel-330.png \
../../fritz/apfel-500.png \
../../fritz/rhabarber-200.png \
../../fritz/rhabarber-330.png \
../../fritz/rhabarber-500.png \
../../fritz/traube-330.png \
../../fritz/anjola-200@2.png \
../../fritz/anjola-330@2.png \
../../fritz/kola-200@2.png \
../../fritz/kola-330@2.png \
../../fritz/kola-500@2.png \
../../fritz/kola-bio-330@2.png \
../../fritz/kola-superzero-200@2.png \
../../fritz/kola-superzero-330@2.png \
../../fritz/kola-superzero-500@2.png \
../../fritz/kola-zero-200@2.png \
../../fritz/kola-zero-330@2.png \
../../fritz/kola-zero-500@2.png \
../../fritz/apfel-kirsch-holunder-200@2.png \
../../fritz/apfel-kirsch-holunder-330@2.png \
../../fritz/melone-200@2.png \
../../fritz/melone-330@2.png \
../../fritz/ingwer-limette-330@2.png \
../../fritz/orange-200@2.png \
../../fritz/orange-330@2.png \
../../fritz/orange-500@2.png \
../../fritz/zitrone-200@2.png \
../../fritz/zitrone-330@2.png \
../../fritz/zitrone-500@2.png \
../../fritz/mischmasch-200@2.png \
../../fritz/mischmasch-330@2.png \
../../fritz/mischmasch-500@2.png \
../../fritz/mischmasch-superzero-330@2.png \
../../fritz/apfel-200@2.png \
../../fritz/apfel-330@2.png \
../../fritz/apfel-500@2.png \
../../fritz/rhabarber-200@2.png \
../../fritz/rhabarber-330@2.png \
../../fritz/rhabarber-500@2.png \
../../fritz/traube-330@2.png

%-200-crop.png~: %-200.png
	magick $< -crop 6390x6390+0+473 $@

%-330-crop.png~: %-330.png
	magick $< -crop 6798x6798+0+353 $@

%-500-crop.png~: %-500.png
	magick $< -crop 7112x7112+0+342 $@

../../fritz/%@2.png: %-crop.png~
	magick $< -colorspace RGB -resize 1280x1280 -colorspace sRGB -background transparent -gravity center -extent 1280x1280 $@

../../fritz/%.png: %-crop.png~
	magick $< -colorspace RGB -resize 640x640 -colorspace sRGB -background transparent -gravity center -extent 640x640 $@
