object TrafficLightsFrame: TTrafficLightsFrame
  Left = 0
  Top = 0
  Width = 125
  Height = 347
  Color = clBlack
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  StyleElements = [seFont, seBorder]
  inline RedTrafficLight: TTrafficLightFrame
    Left = 10
    Top = 10
    Width = 100
    Height = 100
    Color = clBlack
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitLeft = 10
    ExplicitTop = 10
  end
  inline AmberTrafficLight: TTrafficLightFrame
    Left = 10
    Top = 120
    Width = 100
    Height = 100
    Color = clBlack
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitLeft = 10
    ExplicitTop = 120
  end
  inline GreenTrafficLight: TTrafficLightFrame
    Left = 10
    Top = 230
    Width = 100
    Height = 100
    Color = clBlack
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitLeft = 10
    ExplicitTop = 230
  end
end
