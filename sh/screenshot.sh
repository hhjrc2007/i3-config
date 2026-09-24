#!/bin/sh

dir="$HOME/img/ss"
mkdir -p "$dir"
file="$dir/$(date +%Y-%m-%d_%H-%M-%S).png"

maim -s -u "$file" || exit 1
xclip -selection clipboard -t image/png -i "$file"
