unit Frames.TrafficLights;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frames.TrafficLight;

type
  ITrafficLights = interface
    ['{5E574E96-DB76-47D8-9F1D-C40D76D1168E}']
    procedure Change(const aColor: TTrafficColor);
    procedure Malfunction;
  end;

  TTrafficLightsFrame = class(TFrame, ITrafficLights)
    RedTrafficLight: TTrafficLightFrame;
    AmberTrafficLight: TTrafficLightFrame;
    GreenTrafficLight: TTrafficLightFrame;
  private
  public
    procedure AfterConstruction; override;
    procedure Change(const aColor: TTrafficColor);
    procedure Malfunction;
  end;

implementation

{$R *.dfm}

{ TTTrafficLights }

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficLightsFrame.AfterConstruction;
begin
  RedTrafficLight.Color   := colRed;
  AmberTrafficLight.Color := colAmber;
  GreenTrafficLight.Color := colGreen;

  RedTrafficLight.IsActivated := true;
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficLightsFrame.Change(const aColor: TTrafficColor);
begin
  RedTrafficLight.IsActivated   := RedTrafficLight.Color   = aColor;
  AmberTrafficLight.IsActivated := AmberTrafficLight.Color = aColor;
  GreenTrafficLight.IsActivated := GreenTrafficLight.Color = aColor;
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficLightsFrame.Malfunction;
begin
  RedTrafficLight.IsActivated   := true;
  AmberTrafficLight.IsActivated := true;
  GreenTrafficLight.IsActivated := true;
end;

end.
