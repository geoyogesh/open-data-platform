# Open Data Platform

## Design Principles
- Open source and free software
- Responsive mobile first website, instead of App like UI/UX
- Cloud Native and Kubernetics Native web application
- Low cost ($10-$20 monthly cloud charge for average usage) but scalable solution  
- Ability to version data for reproducible data science 
- SEO - data layers are discoverable via search engine

## Target Users
Government, Non profit and Private Organization who wants to share their data to public.

## Motivation
Current platforms are either fragile, expensive or advocates vendor lock-in to their proprietary platform. It is apprecated when Organization share their data to public and we feel they deserve better tools for their intention. 


## Supported DataTypes
### Tabular & Time Series Tabular Data
- View - Datagrid, Chart if it is time series
	TileDB data stored in object storage
- Storage Format - TileDB
- Query and clip and ship
	tiledb python sdk to query and export to desired format using gdal 
- Export to multiple fileformats -> csv, xlsx .. etc
- Integrate with Jupyter notebook
	- returns pandas dataframe or xarray from tiledb
- Integrate with Spark Batch Processing and Presto

### Geospatial Vector
- View - Mapbox GL JS or Open Layer
	gdal + mapbox vector tile, tippicanno -> vector tile -> s3
		- Supported input formats -> shapefile, filegeodatabse, geojson, geopackage and so on
- Storage Format - Mapbox Vector Tiles & GeoPackage
- Ability to author symbology, inspect feature attributes, client-side attribute and spatial filter 
- Query and clip and ship
	gdal -> geopackage
	adhock query -> read geopackage -> geopandans -> generate result and push the output to s3  
	using GDAL to support multiple output formats 	
- Export to multiple fileformats -> csv, geojson, file geodatabse, kmz	
- Integrate with Jupyter notebook
	- returns geopandas dataframe from geojson
- Integrate with Spark Batch Processing and Presto

### GeoSpatial Raster
- View - Mapbox GL JS or Open Layer
	gdal + Cloud Optimied GeoTiff -> s3
		- Supported input formats -> GeoTIFF, COG
- Storage Format - Cloud Optimied GeoTiff (COG)
- Ability to toggle and style bands, On the fly expression execution 
- Query and clip and ship
	RasterIO -> Read COG -> Export 	
- Export to multiple fileformats 
	GDAL or RasterIO	
- Integrate with Jupyter notebook
	- returns numpy array from COG
- Integrate with Spark Batch Processing, Raster Foundry
	
### Point cloud LIDAR
- View - Mapbox GL JS + Deck GL (georeferenced), Deck GL (not georeferenced) or PoTree Viewer.
	- Use PDAL to read various input formats to laz. Convert LAZ to EPT using entwine and TileDB Format
- Storage Format - Point Cloud 3D Tiles or EPT Tiles & TileDB 
- Ability to inspect data
- Export to fileformats -> laz .. etc
- Integrate with Jupyter notebook
	- returns pandas dataframe or xarray from tiledb


### RADAR
- Storage Format - TileDB 
### Other Scientific data
- Storage Format - Zarr 

## Metadata
### Metadata Properties
- Tile
- Summary
- Description
- Thumbnail
- Tags
- Author
- Credits
- Links
- Last Updated
### Metadata Standards
- ISO 19115/19139
- North American Profile of ISO 19115 2003
- INSPIRE Metadata Directive
- FGDC CSDGM Metadata
- Dublin Core

## Catalog Open Standards 
 - OGC Catalogue Service
 - OGC STAC

## Platfrom integration
- Kepler GL JS
- Sandance

## Client SDK
- CLI
- WebPortal
- Python Library - Handy wrapper to query the platfrom data and make sure of it

## Deployment options
- Local workstation -> Docker Compose, Kubernetics
	- Storage  
		- MinIO https://min.io/ 
		- Nginx backed by file share
- On Premise Hosting 
	- Kubernetics
- Cloud Platfrom 
	- AWS -> Cloud formation + AWS Native Serverless solution 
	- AZURE
	- GCP
