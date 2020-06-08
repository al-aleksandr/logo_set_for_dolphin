#!/bin/bash

# logo_set add menu item into Dolphin for logotype setting on photo

# whereis plugin should be ($DistServiceMenusDir)
# $ kf5-config --path services

# Settings
DistServiceMenusDir="$HOME/.local/share/kservices5/ServiceMenus"
DistScriptDir="$HOME/.local/share/logo_set"

# Install
echo "Setup logo set utility into your system by path:"

LogoFile="$1"
MainDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ -f "$LogoFile" ]; then
    echo "DistServiceMenusDir :  $DistServiceMenusDir"
    echo "DistScriptDir       :  $DistScriptDir"
else 
    echo "$LogoFile logo file does not exist."
    echo
    echo "How to use:"
    echo "  $0 <path_to_png_file>"
    exit -1
fi

#Create Service Menu
mkdir -p "$DistServiceMenusDir"
cp -r "$MainDir/ServiceMenus/." "$DistServiceMenusDir"

# Copy shell scripts
rm -rf "$DistScriptDir"
mkdir -p "$DistScriptDir"
cp -r "$MainDir/Scripts/." "$DistScriptDir"

#Copy Logo
cp -f "$LogoFile" "$DistScriptDir/logo.png"
