# Open Data Platform


## Design Principles
- Responsive mobile first website, instead of App like UI
- Cloud Native and Kubernetics Native web application
- Low cost ($10-$20 monthly charges) but scalable solution  
- Ability to version data for reproducible data science 


## Supported DataTypes

### Vector
- View - Mapbox GL JS or Open Layer
	gdal + mapbox vector tile, tippicanno -> vector tile -> s3
		- Supported input formats -> shapefile, filegeodatabse, geojson, geopackage and so on
- Ability to author symbology, inspect feature attributes, client-side attribute and spatial filter 
- Query and clip and ship
	gdal -> geopackage
	adhock query -> read geopackage -> geopandans -> generate result and push the output to s3  
	using GDAL to support multiple output formats 	
- Exportable to multiple fileformats -> csv, geojson, file geodatabse, kmz	
- Integrate with Jupyter notebook
	- returns geopandas dataframe from geojson
- Integrate with Spark Batch Processing

### Raster
- View - Mapbox GL JS or Open Layer
	gdal + Cloud Optimied GeoTiFF -> s3
		- Supported input formats -> GeoTIFF, COG
- Ability to toggle and style bands, On the fly expression execution 
- Query and clip and ship
	RasterIO -> Read COG -> Export 	
- Exportable to multiple fileformats 
	GDAL or RasterIO	
- Integrate with Jupyter notebook
	- returns numpy array from COG
- Integrate with Spark Batch Processing, Raster Foundry
	
### Point cloud LIDAR, RADAR - TileDB 
### Other Scientific data - Zarr


## Catalog Open Standards 
 - OGC Catalogue Service
 - OGC STAC

## Platfrom integration
- Kepler GL Js
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
