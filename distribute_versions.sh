#!/bin/bash

zipname="$(basename "$(pwd)").zip"
versions=("1.17" "1.18" "1.19" "1.19.3" "1.19.4" "1.20" "1.20.2" "1.20.3" "1.20.5" "1.21" "1.21.2" "1.21.4" "1.21.5" "1.21.6" "1.21.7" "1.21.9" "1.21.11" "26.1")

for version in "${versions[@]}"; do
    dest="/home/turbo/.var/app/org.polymc.PolyMC/data/PolyMC/instances/$version/.minecraft/resourcepacks/$zipname"

    cp "$zipname" "$dest" >/dev/null 2>&1

    if [ "$?" = "0" ]; then
        echo "Copied $zipname to $dest"
    else
        echo "Could not copy $zipname to $dest"
    fi
done