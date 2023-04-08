# Datos

## infraestructura
```shell
# Para el servicio WMS
# Reproyección a CRTM05 (para el servicio WMS), cambio de resolución y compresión
gdalwarp -t_srs EPSG:5367 -dstnodata -9999 -of vrt \
  infraestructura/raw/infraestructura_verde.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ infraestructura/processed/infraestructura-5367.tif

# Para un archivo local
# Reproyección a Web Mercator, cambio de resolución y compresión
gdalwarp -t_srs EPSG:3857 -dstnodata -9999 -tr 30 30 -of vrt \
  infraestructura/raw/infraestructura_verde.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ infraestructura/interim/infraestructura-3857.tif
# Reproyección a WGS84 y compresión
gdalwarp -t_srs EPSG:4326 -of vrt \
  infraestructura/interim/infraestructura-3857.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ infraestructura/processed/infraestructura.tif
  
# Reubicación de archivos muy grandes para repositorios GitHub
mv infraestructura/raw/infraestructura_verde.tif ~/Downloads
mv infraestructura/processed/infraestructura-5367.tif ~/Downloads
```

## metricas-servicios-ecosistemicos
```shell
# Reproyección a WGS84, validación de geometrías y conversión a GeoJSON
ogr2ogr -t_srs EPSG:4326 -makevalid \
  metricas-servicios-ecosistemicos/processed/metricas-servicios-ecosistemicos.geojson \
  /vsizip/metricas-servicios-ecosistemicos/raw/metrias_SE_cantones.zip
```

## metricas-ciudad-verde
```shell
# Reproyección a WGS84, validación de geometrías y conversión a GeoJSON
ogr2ogr -t_srs EPSG:4326 -makevalid \
  metricas-ciudad-verde/processed/metricas-ciudad-verde.geojson \
  /vsizip/metricas-ciudad-verde/raw/metricas_cuidad_verde_final.zip
```
