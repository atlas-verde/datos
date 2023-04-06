# Datos

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
