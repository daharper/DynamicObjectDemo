program DynamicObjectDemo;

uses
  Vcl.Forms,
  Forms.Main in 'Forms\Forms.Main.pas' {MainForm},
  Frames.TrafficLight in 'Frames\Frames.TrafficLight.pas' {TrafficLightFrame: TFrame},
  Base.Core in 'Base\Base.Core.pas',
  Base.Dynamic in 'Base\Base.Dynamic.pas',
  Base.Integrity in 'Base\Base.Integrity.pas',
  Base.Messaging in 'Base\Base.Messaging.pas',
  Base.Reflection in 'Base\Base.Reflection.pas',
  Vcl.Themes,
  Vcl.Styles,
  Frames.TrafficLights in 'Frames\Frames.TrafficLights.pas' {TrafficLightsFrame: TFrame},
  Utils.TrafficController in 'Utils\Utils.TrafficController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Dynamic Demo (Project Galahad v0.1)';
  TStyleManager.TrySetStyle('Windows11 MineShaft');
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
