#!/bin/bash

zipname="$(basename "$(pwd)").zip"

rm "$zipname"

zip "$zipname" -r assets/ big_update/ fog_distance_change/ opengl_3.3/ pack.mcmeta pack.png LICENSE
