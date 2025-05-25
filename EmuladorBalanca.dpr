program EmuladorBalanca;

uses
  Vcl.Forms,
  CardPeso in 'Source\CardPeso.pas' {frmCardPeso: TFrame},
  Main in 'Source\Main.pas' {frmMain};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
