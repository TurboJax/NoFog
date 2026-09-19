#!/bin/bash

zipname="$(basename "$(pwd)").zip"

# Removing the old zip
rm "$zipname"

# Adding the base assets and metadata
zip "$zipname" -r assets/ pack.mcmeta pack.png LICENSE

# Adding overlays
cd "overlays"

for f in ./*; do
  zip "../$zipname" -r "$f"
done
