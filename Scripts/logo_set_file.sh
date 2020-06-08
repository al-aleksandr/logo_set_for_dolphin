#!/bin/bash

# full path name
u="$1"
# file name
f="$(basename -- "$u")"
#deirectory name
d="$(dirname -- "$u")"
logo="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/logo.png
res_dir="$d/with_logo_bl"
resized_file="$d/with_logo_bl/$f.tmp"

echo "Set logo: $u --> $res_dir/$f"

mkdir -p "$res_dir"
convert "$u" -resize 1920x1920 "$resized_file"
composite -gravity SouthWest -quality 80 -blend 70% $logo "$resized_file" "$res_dir/$f"
rm "$resized_file"
