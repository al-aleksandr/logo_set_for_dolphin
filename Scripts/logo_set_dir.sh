#!/bin/bash

# full path name to directory
WorkDir="$1"
DoScript="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/logo_set_file.sh

echo "Set Logo to photos from $WorkDir/*"

ls "$WorkDir" | while read I; do "$DoScript" "$WorkDir/$I" ; done
