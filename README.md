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
- Query and clip and ship
	gdal -> geopackage
	adhock query -> read geopackage -> geopandans -> generate result and push the output to s3  
	using GDAL to support multiple output formats 	
- Exportable to multiple fileformats -> csv, geojson, file geodatabse, kmz	
- Integrate with Jupyter notebook
	- returns geopandas dataframe from geojson
- Integrate with Spark Batch Processing
- Can integrate with Other Tools -> Kepler GL JS, Sandance 

### Raster
- View - Mapbox GL JS or Open Layer
	gdal + Cloud Optimied GeoTiFF -> s3
		- Supported input formats -> TiFF
	On the fly Expression
- Query and clip and ship
	RasterIO -> Read COG -> Export 	
- Exportable to multiple fileformats 
	GDAL or RasterIO	
- Integrate with Jupyter notebook
	- returns numpy array from COG
- Integrate with Spark Batch Processing
- Can integrate with Other Tools -> Kepler GL JS
	
### Point cloud LIDAR, RADAR - TileDB 
### Other Scientific data - Zarr

https://code.earthengine.google.com/


## Catalog Open Standards 
 - OGC Catalogue Service
 - OGC STAC

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
