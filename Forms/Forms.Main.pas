unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Base.Dynamic, Frames.TrafficLights, Utils.TrafficController;

type
  TMainForm = class(TForm)
    TrafficLights: TTrafficLightsFrame;
    cboColors: TComboBox;
    procedure cboColorsSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fController: TDynamic;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

{----------------------------------------------------------------------------------------------------------------------}
procedure TMainForm.cboColorsSelect(Sender: TObject);
begin
  var color := cboColors.Text;

  TDynamicHelper.Invoke(fController, color, []);
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TMainForm.FormShow(Sender: TObject);
begin
  fController := TTrafficController.Create.AsDynamic;
  fController.Use(TrafficLights as ITrafficLights);
end;

end.
