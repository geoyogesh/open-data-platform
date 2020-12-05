#!/bin/bash

set -e

wget -O county.zip https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_500k.zip

unzip county.zip -d county

rm tiles/ -r

mkdir tiles


# generate vector tiles

name='county'
input_file='./county/cb_2018_us_county_500k.shp'
geojson_file="./county/$name.json"
minzoom=0
maxzoom=10
# method 1
# ogr2ogr -f MVT ./tiles/$name $input_file -dsco MINZOOM=$minzoom -dsco MAXZOOM=$maxzoom -dsco NAME=$name

ogr2ogr -f MVT /data/analysis/data_catalog_generated/$name $input_file -dsco MINZOOM=$minzoom -dsco MAXZOOM=$maxzoom -dsco NAME=$name -dsco COMPRESS=NO

ogr2ogr -f MVT ./tiles/$name $input_file -dsco MINZOOM=$minzoom -dsco MAXZOOM=$maxzoom -dsco NAME=$name -dsco COMPRESS=NO 

cp -r /data/scripts/tiles/ /data/analysis/data_catalog_generated/

ogr2ogr -f GeoJSONSeq $geojson_file $input_file
tippecanoe --name=$name --layer=$name --read-parallel --no-progress-indicator --output-to-directory=./tiles/$name $geojson_file --force --no-feature-limit --no-tile-size-limit -rg --maximum-zoom=$maxzoom --minimum-zoom=$minzoom --no-tile-compression