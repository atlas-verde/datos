# Datos

## temperatura-superficial

### promedio
```shell
# Para el servicio WMS
# Reproyección a CRTM05 y compresión
gdalwarp -t_srs EPSG:5367 -dstnodata -9999 -of vrt \
  temperatura-superficial/raw/lst_promedio.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ temperatura-superficial/processed/temperatura-superficial-promedio-5367.tif
  
# Para un archivo raster local
# Reproyección a WGS84 y compresión
gdalwarp -t_srs EPSG:4326 -dstnodata -9999 -of vrt \
  temperatura-superficial/raw/lst_promedio.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ temperatura-superficial/processed/temperatura-superficial-promedio.tif
```

### máxima
```shell
# Para el servicio WMS
# Reproyección a CRTM05 y compresión
gdalwarp -t_srs EPSG:5367 -dstnodata -9999 -of vrt \
  temperatura-superficial/raw/lst_max.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ temperatura-superficial/processed/temperatura-superficial-maxima-5367.tif
  
# Para un archivo raster local
# Reproyección a WGS84 y compresión
gdalwarp -t_srs EPSG:4326 -dstnodata -9999 -of vrt \
  temperatura-superficial/raw/lst_max.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ temperatura-superficial/processed/temperatura-superficial-maxima.tif
```

## cantones
```shell
# Reproyección a WGS84, validación de geometrías y borrado de columnas innecesarias
ogr2ogr -t_srs EPSG:4326 -makevalid \
  -select "cod_canton, canton, cod_provin, provincia, ha_canton" \
  -nln cantones \
  cantones/processed/cantones.geojson \
  /vsizip/metricas-servicios-ecosistemicos/raw/metrias_SE_cantones.zip
```

## infraestructura
```shell
# Para el servicio WMS
# Reproyección a CRTM05, cambio de resolución y compresión
gdalwarp -t_srs EPSG:5367 -dstnodata -9999 -of vrt \
  infraestructura/raw/infraestructura_verde.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ infraestructura/processed/infraestructura-5367.tif

# Para un archivo raster local
# Reproyección a Web Mercator, cambio de resolución y compresión
gdalwarp -t_srs EPSG:3857 -dstnodata -9999 -tr 30 30 -of vrt \
  infraestructura/raw/infraestructura_verde.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ infraestructura/interim/infraestructura-3857.tif
# Reproyección a WGS84 y compresión
gdalwarp -t_srs EPSG:4326 -of vrt \
  infraestructura/interim/infraestructura-3857.tif /vsistdout/ \
  | gdal_translate -co compress=lzw /vsistdin/ infraestructura/processed/infraestructura.tif
  
# Para los datos de áreas de infraestructura por cantón
cp infraestructura/raw/matrices_corregidas.xlsx infraestructura/processed/infraestructura-cantones.xlsx
  
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
