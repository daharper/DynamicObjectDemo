unit Utils.TrafficController;

interface

uses
  Frames.TrafficLight,
  Frames.TrafficLights,
  Base.Dynamic;

type
  TTrafficController = class(TDynamicObject)
  private
    fLights: ITrafficLights;
  public
    function MethodMissing(const aName: string; const aHint: TInvokeHint; const aArgs: TArray<Variant>): Variant; override;

    procedure Red;
    procedure Amber;
    procedure Green;

    procedure Use(const aLights: ITrafficLights);
  end;

implementation

{ TTrafficController }

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficController.Red;
begin
  fLights.Change(colRed);
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficController.Amber;
begin
  fLights.Change(colAmber);
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficController.Green;
begin
  fLights.Change(colGreen);
end;

{----------------------------------------------------------------------------------------------------------------------}
function TTrafficController.MethodMissing(const aName: string; const aHint: TInvokeHint; const aArgs: TArray<Variant>): Variant;
begin
  fLights.Malfunction;
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TTrafficController.Use(const aLights: ITrafficLights);
begin
  fLights := aLights;
end;

end.
