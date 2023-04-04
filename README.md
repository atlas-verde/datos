# Datos

## metricas_ejemplo_tablero_080223
```shell
# Reproyección a WGS84, validación de geometrías y conversión a GeoJSON
ogr2ogr -t_srs EPSG:4326 -makevalid \
  metricas_ejemplo_tablero_080223/processed/metricas_ejemplo_tablero_080223.geojson \
  /vsizip/metricas_ejemplo_tablero_080223/raw/metricas_ejemplo_tablero_080223.zip
```

## metricas-ciudad-verde
```shell
# Reproyección a WGS84, validación de geometrías y conversión a GeoJSON
ogr2ogr -t_srs EPSG:4326 -makevalid \
  metricas-ciudad-verde/processed/metricas-ciudad-verde.geojson \
  /vsizip/metricas-ciudad-verde/raw/metricas_cuidad_verde_final.zip
```
