#!/usr/bin/env bash

SRC="../src/Mint-Y"
DEST="build/usr/share/themes"

VARIATIONS=(Aqua Blue Grey Orange Pink Purple Red Sand Teal)

function run_cmd() {
    echo "$@"
    "$@"
}

function build_assets() {
    local src="${1:?Error: build_assets <src>}"

    while read i; do
        run_cmd inkscape -i "$i" -j -d 192 -o "$src/$i.png" "$src"/assets.svg 2>/dev/null
        run_cmd optipng -o7 -quiet "$src/$i.png"
    done < "$src"/assets.txt
}

build_assets "$SRC/xfwm4"
build_assets "$SRC/xfwm4-dark"

for variation in "${VARIATIONS[@]}"; do
    build_assets "$SRC"/variations/"$variation"/xfwm4
    build_assets "$SRC"/variations/"$variation"/xfwm4-dark
done

run_cmd rm -R "$DEST"

dest="$DEST/Mint-Y-xhdpi"
run_cmd mkdir -p "$dest"
run_cmd cp -R "$SRC"/xfwm4 "$dest"

dest="$DEST/Mint-Y-Dark-xhdpi"
run_cmd mkdir -p "$dest"
run_cmd cp -R "$SRC"/xfwm4-dark "$dest"/xfwm4

for variation in "${VARIATIONS[@]}"; do
    dest="$DEST/Mint-Y-$variation-xhdpi"
    run_cmd mkdir -p "$dest"
    run_cmd cp -R "$SRC"/xfwm4 "$dest"
    run_cmd cp -R "$SRC"/variations/"$variation"/xfwm4/*.png "$dest"/xfwm4

    dest="$DEST/Mint-Y-Dark-$variation-xhdpi"
    run_cmd mkdir -p "$dest"
    run_cmd cp -R "$SRC"/xfwm4-dark "$dest"/xfwm4
    run_cmd cp -R "$SRC"/variations/"$variation"/xfwm4-dark/*.png "$dest"/xfwm4
done
