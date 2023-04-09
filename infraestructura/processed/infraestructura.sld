<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0" xmlns:gml="http://www.opengis.net/gml" xmlns:sld="http://www.opengis.net/sld">
  <UserLayer>
    <sld:LayerFeatureConstraints>
      <sld:FeatureTypeConstraint/>
    </sld:LayerFeatureConstraints>
    <sld:UserStyle>
      <sld:Name>infraestructura_verde</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:RasterSymbolizer>
            <sld:ChannelSelection>
              <sld:GrayChannel>
                <sld:SourceChannelName>1</sld:SourceChannelName>
              </sld:GrayChannel>
            </sld:ChannelSelection>
            <sld:ColorMap type="values">
              <sld:ColorMapEntry label="Arbolados a lo largo de las autopistas" color="#294d36" quantity="1"/>
              <sld:ColorMapEntry label="Arbolados a lo largo de la vía férrea" color="#0b4b45" quantity="2"/>
              <sld:ColorMapEntry label="Cercas vivas" color="#3f8511" quantity="3"/>
              <sld:ColorMapEntry label="Terrenos baldíos" color="#739f7b" quantity="4"/>
              <sld:ColorMapEntry label="Superficie pavimentada" color="#6c7582" quantity="5"/>
              <sld:ColorMapEntry label="Superficie no pavimentada" color="#9d925e" quantity="6"/>
              <sld:ColorMapEntry label="Edificaciones" color="#b9b9b9" quantity="7"/>
              <sld:ColorMapEntry label="Otra infraestructura gris" color="#7d7d7d" quantity="8"/>
              <sld:ColorMapEntry label="Cafetales arbolados" color="#996053" quantity="9"/>
              <sld:ColorMapEntry label="Pastos cultivados" color="#8cb656" quantity="10"/>
              <sld:ColorMapEntry label="Cultivos perennes" color="#ffa28f" quantity="11"/>
              <sld:ColorMapEntry label="Cultivos anuales" color="#ffcd43" quantity="12"/>
              <sld:ColorMapEntry label="Cultivos confinados" color="#6c2332" quantity="13"/>
              <sld:ColorMapEntry label="Lagunas estacionales e intermitentes" color="#5ec9fb" quantity="14"/>
              <sld:ColorMapEntry label="Bosques y arbolados periurbanos" color="#2e640d" quantity="15"/>
              <sld:ColorMapEntry label="Bosques y arbolados en la ribera de los ríos" color="#144b06" quantity="16"/>
              <sld:ColorMapEntry label="Matorrales" color="#83a23c" quantity="17"/>
              <sld:ColorMapEntry label="Arbolados dispersos" color="#007d3e" quantity="18"/>
              <sld:ColorMapEntry label="Parques y jardínes &lt;500 metros cuadrados" color="#87df76" quantity="19"/>
              <sld:ColorMapEntry label="Campos deportivos y recreativos" color="#d4e76a" quantity="20"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </UserLayer>
</StyledLayerDescriptor>
