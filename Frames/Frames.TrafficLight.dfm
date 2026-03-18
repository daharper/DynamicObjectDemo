object TrafficLightFrame: TTrafficLightFrame
  Left = 0
  Top = 0
  Width = 100
  Height = 100
  Color = clBlack
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object Light: TShape
    Left = 0
    Top = 0
    Width = 100
    Height = 100
    Align = alClient
    Brush.Color = clGray
    Shape = stCircle
  end
end
