# open-data-platform
Open Data Platform


10-20$ cost

Open data platfrom
- Wevsite, instead of app
- Mobile frendly 
- Cloud native and Kubernetics Native application
- Cost effective
- Versioned data for reproduc

Processing pipeline

vector
	viewing - Mapbox GL JS or Open Layer
		gdal + mapbox vector tile, tippicanno -> vector tile -> s3
			- Supported input formats -> shapefile, filegeodatabse, geojson, geopackage and so on

	Query and clip and ship
		gdal -> geopackage
		adhock query -> read geopackage -> geopandans -> generate result and push the output to s3  
		using GDAL to support multiple output formats 
	
	Exportable to multiple fileformats -> csv, geojson, file geodatabse, kmz
	
	Integrate with Jupyter notebook
		- returns geopandas dataframe from geojson
	
	Integrate with Spark Batch Processing
	
	Can integrate with Other Tools -> Kepler GL JS, Sandance 

Raster 

	viewing - Mapbox GL JS or Open Layer
		gdal + Cloud Optimied GeoTiFF -> s3
			- Supported input formats -> TiFF
	
	Query and clip and ship
		RasterIO -> Read COG -> Export 
	
	Exportable to multiple fileformats 
		GDAL or RasterIO
	
	Integrate with Jupyter notebook
		- returns numpy array from COG
	
	Integrate with Spark Batch Processing
	
	Can integrate with Other Tools -> Kepler GL JS
	
Point cloud LIDAR and RADAR - TileDB 

https://code.earthengine.google.com/

	

Catalog Open Standards 
  OGC Catalogue Service
  OGC STAC


-> Deployment options
- Local workstation -> Docker Compose, Kubernetics  -> s3 https://min.io/
- Onpermise Hosting -> Kubernetics
- Cloud Platfrom 
	- AWS -> Cloud formation + AWS Native Serverless technol0gies 
	- AZURE
	- GCP
