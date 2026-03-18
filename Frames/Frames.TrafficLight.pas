unit Frames.TrafficLight;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TTrafficColor = (colRed, colAmber, colGreen);
  TTrafficColors = set of TTrafficColor;

  TTrafficLightFrame = class(TFrame)
    Light: TShape;
  private
    fIsActivated: boolean;
    fColor: TTrafficColor;

    procedure SetIsActivated(const aValue: boolean);
    procedure SetColor(const aColor: TTrafficColor);
  public
    property Color: TTrafficColor read fColor write SetColor;
    property IsActivated: boolean read fIsActivated write SetIsActivated;
  end;

var
  TrafficColors: TTrafficColors = [colRed, colAmber, colGreen];

implementation

{$R *.dfm}

uses
  Base.Integrity;

var
  Colors: array[TTrafficColor] of TColor = (clRed, clWebDarkOrange, clGreen);

{ TTLightFrame }

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficLightFrame.SetColor(const aColor: TTrafficColor);
begin
  Ensure.IsTrue(aColor in TrafficColors, 'Invalid color');

  fColor := aColor;
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficLightFrame.SetIsActivated(const aValue: boolean);
begin
  if aValue = fIsActivated then exit;

  fIsActivated := aValue;

  Light.Brush.Color := if fIsActivated then Colors[fColor] else clGray;
end;

end.
