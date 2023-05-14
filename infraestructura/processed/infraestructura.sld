<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.0.0" xmlns:ogc="http://www.opengis.net/ogc" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml">
  <UserLayer>
    <sld:LayerFeatureConstraints>
      <sld:FeatureTypeConstraint/>
    </sld:LayerFeatureConstraints>
    <sld:UserStyle>
      <sld:Name>infraestructura_gam</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:RasterSymbolizer>
            <sld:ChannelSelection>
              <sld:GrayChannel>
                <sld:SourceChannelName>1</sld:SourceChannelName>
              </sld:GrayChannel>
            </sld:ChannelSelection>
            <sld:ColorMap type="values">
              <sld:ColorMapEntry quantity="1" color="#294d36" label="Arbolados a lo largo de las autopistas"/>
              <sld:ColorMapEntry quantity="2" color="#0b4b45" label="Arbolados a lo largo de la vía férrea"/>
              <sld:ColorMapEntry quantity="3" color="#3f8511" label="Cercas vivas"/>
              <sld:ColorMapEntry quantity="4" color="#739f7b" label="Terrenos baldíos"/>
              <sld:ColorMapEntry quantity="5" color="#6c7582" label="Superficie pavimentada"/>
              <sld:ColorMapEntry quantity="6" color="#9d925e" label="Superficie no pavimentada"/>
              <sld:ColorMapEntry quantity="7" color="#b9b9b9" label="Edificaciones"/>
              <sld:ColorMapEntry quantity="8" color="#7d7d7d" label="Otra infraestructura gris"/>
              <sld:ColorMapEntry quantity="9" color="#996053" label="Cafetales arbolados"/>
              <sld:ColorMapEntry quantity="10" color="#8cb656" label="Gramíneas"/>
              <sld:ColorMapEntry quantity="11" color="#ffa28f" label="Cultivos perennes"/>
              <sld:ColorMapEntry quantity="12" color="#ffcd43" label="Cultivos anuales"/>
              <sld:ColorMapEntry quantity="13" color="#6c2332" label="Cultivos confinados"/>
              <sld:ColorMapEntry quantity="14" color="#5ec9fb" label="Embalses, lagos y lagunas estacionales e intermitentes"/>
              <sld:ColorMapEntry quantity="15" color="#2e640d" label="Bosques y arbolados periurbanos"/>
              <sld:ColorMapEntry quantity="16" color="#144b06" label="Bosques y arbolados en la ribera de los ríos"/>
              <sld:ColorMapEntry quantity="17" color="#83a23c" label="Matorrales"/>
              <sld:ColorMapEntry quantity="18" color="#007d3e" label="Arbolados dispersos"/>
              <sld:ColorMapEntry quantity="19" color="#87df76" label="Parques, y jardínes &lt;500 metros cuadrados"/>
              <sld:ColorMapEntry quantity="20" color="#d4e76a" label="Campos deportivos y recreativos"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </UserLayer>
</StyledLayerDescriptor>
