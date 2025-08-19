#!/usr/bin/env bash
shopt -s nullglob
grep '##' README.md >/dev/null && sed -i -n '/##/q;p' README.md || true
for brand in $(find . -maxdepth 1 -type d -iname "[a-z0-9]*" | sort | xargs -n1 basename); do
	brand_name=$(echo "$brand" | sed 's/-/ /g' | sed -E 's/(^| )([a-z])/\1\U\2\E/g')
	echo "## $brand_name" \
		| sed 's/^## Afri$/## Afri-Cola/' \
		| sed 's/^## Club$/## Club Mate/' \
		| sed 's/^## Kraeuterbraut$/## Kräuterbraut/' \
		| sed 's/^## Luetts Landlust$/## Lütts Landlust/' \
		| sed 's/^## Miomio$/## Mio Mio/' \
		| sed 's/^## Vivaconagua$/## Viva con Agua/' \
		>> README.md
	echo >> README.md
	for size in $(ls $brand | awk -F '-' '{print $NF}' | cut -d '.' -f 1 | cut -d '@' -f 1 | sort -nu); do
		echo "### ${size}ml" >> README.md
		find "_composite" -iname "$brand-*" -iname "*-$size.png" | sort | sed -E 's#^(.*)$#<img src="\1" width="64" height="64" />\&nbsp;#' >> README.md
		find "$brand" -iname "*-$size.png" | sort | sed -E 's#^(.*).png$#<a href="\1@2.png"><img src="\1.png" width="64" height="64" /></a>\&nbsp;#' >> README.md
		echo >> README.md
	done
done
echo "## Currencies" >> README.md
echo >> README.md
echo "### Euro" >> README.md
for value in $(ls _money/euro-* | awk -F '-' '{print $NF}' | cut -d '.' -f 1 | sort -nu); do
	find "_money" -iname "euro-*" -iname "*-$value.png" | sort -n | sed -E 's#^(.*)$#<img src="\1" width="64" height="64" />\&nbsp;#' >> README.md
done


