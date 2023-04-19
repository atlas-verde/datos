<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <UserLayer>
    <sld:LayerFeatureConstraints>
      <sld:FeatureTypeConstraint/>
    </sld:LayerFeatureConstraints>
    <sld:UserStyle>
      <sld:Name>temperatura-superficial-maxima</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:RasterSymbolizer>
            <sld:ChannelSelection>
              <sld:GrayChannel>
                <sld:SourceChannelName>1</sld:SourceChannelName>
              </sld:GrayChannel>
            </sld:ChannelSelection>
            <sld:ColorMap type="ramp">
              <sld:ColorMapEntry color="#30123b" quantity="16.03196144104004" label="16,0320"/>
              <sld:ColorMapEntry color="#4662d8" quantity="25.11891221583338" label="25,1189"/>
              <sld:ColorMapEntry color="#35abf9" quantity="28.28211091718553" label="28,2821"/>
              <sld:ColorMapEntry color="#1ae5b6" quantity="31.5764618677772" label="31,5765"/>
              <sld:ColorMapEntry color="#74fe5d" quantity="34.43158176075379" label="34,4316"/>
              <sld:ColorMapEntry color="#c9ef34" quantity="36.96312870509885" label="36,9631"/>
              <sld:ColorMapEntry color="#fbb938" quantity="39.44128071778925" label="39,4413"/>
              <sld:ColorMapEntry color="#f56917" quantity="42.12407677229342" label="42,1241"/>
              <sld:ColorMapEntry color="#c92903" quantity="45.21968460499907" label="45,2197"/>
              <sld:ColorMapEntry color="#7a0403" quantity="58.13220436214117" label="58,1322"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </UserLayer>
</StyledLayerDescriptor>
