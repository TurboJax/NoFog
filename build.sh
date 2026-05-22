#!/bin/bash

zipname="$(basename "$(pwd)").zip"

rm "$zipname"
zip "$zipname" -r assets/ overlays/ pack.mcmeta pack.png LICENSE
