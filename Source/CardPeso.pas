unit CardPeso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TOnExcluirEvent = reference to procedure(const Peso: Currency);
  TfrmCardPeso = class(TFrame)
    pnlClient: TPanel;
    lblTexto: TLabel;
    bvlCardPeso: TBevel;
    btnExcluir: TSpeedButton;
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FPeso: Currency;
    FOnExcluir: TOnExcluirEvent;
    function FormatTexto(const pID: Integer; const pPeso: Currency): string;
    procedure SetOnExcluir(const Value: TOnExcluirEvent);
  public
    { Public declarations }
    procedure RegistrarPeso(const pID: Integer; const pPeso: Currency);
    property OnExcluir: TOnExcluirEvent read FOnExcluir write SetOnExcluir;
  end;

implementation

{$R *.dfm}

{ TfrmCardPeso }

procedure TfrmCardPeso.btnExcluirClick(Sender: TObject);
begin
  if Assigned(FOnExcluir) then
    FOnExcluir(FPeso);
  Self.Free;
end;

function TfrmCardPeso.FormatTexto(const pID: Integer; const pPeso: Currency): string;
begin
  if (pPeso < 1.00) then
    Result := Format('ITEM. %.2d - %.3ng', [pID, pPeso])
  else
    Result := Format('ITEM. %.2d - %.3nkg', [pID, pPeso]);
end;

procedure TfrmCardPeso.RegistrarPeso(const pID: Integer; const pPeso: Currency);
begin
  FPeso := pPeso;
  lblTexto.Caption := FormatTexto(pID, pPeso);
end;

procedure TfrmCardPeso.SetOnExcluir(const Value: TOnExcluirEvent);
begin
  FOnExcluir := Value;
end;

end.
