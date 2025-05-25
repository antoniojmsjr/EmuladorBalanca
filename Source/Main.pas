unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  CardPeso, ACBrBase, ACBrBAL, synaser;

type
  TfrmMain = class(TForm)
    pnlHeader: TPanel;
    pnlClient: TPanel;
    bvlHeader: TBevel;
    gbxConfiguracao: TGroupBox;
    lblComunicacaoPorta: TLabel;
    cbxComunicacaoPorta: TComboBox;
    btnComunicacaoPortaRefresh: TSpeedButton;
    btnComunicacaoAtivar: TButton;
    btnComunicacaoDesativar: TButton;
    gbxBalanca: TGroupBox;
    bvlBalanca: TBevel;
    btnBalancaReset: TButton;
    lblBalancaSimulacao: TLabel;
    cbxBalancaSimulacao: TComboBox;
    pnlRegistroPeso: TPanel;
    pnlRegistroPesoListagem: TPanel;
    pnlRegistroPesoToolbar: TPanel;
    pnlRegistroPesoListagemTotalizador: TPanel;
    scbRegistroPesoListagem: TScrollBox;
    btnRegistroPesoToolbarRegistrarPeso: TButton;
    edtRegistroPesoToolbarPeso: TEdit;
    bvlRegistroPesoToolbar: TBevel;
    lblRegistroPesoToolbarPeso: TLabel;
    ACBrBAL: TACBrBAL;
    tmrLerSerial: TTimer;
    procedure btnRegistroPesoToolbarRegistrarPesoClick(Sender: TObject);
    procedure edtRegistroPesoToolbarPesoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnBalancaResetClick(Sender: TObject);
    procedure tmrLerSerialTimer(Sender: TObject);
    procedure btnComunicacaoAtivarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnComunicacaoPortaRefreshClick(Sender: TObject);
    procedure btnComunicacaoDesativarClick(Sender: TObject);
  private
    { Private declarations }
    FDevice: TBlockSerial;
    FTotalizadorPeso: Currency;
    procedure GetPortas;
    procedure AtivarControles(const pAtivar: Boolean);
    procedure FormatTotalizador(const pPeso: Currency);
    procedure OnExcluirRegistroPeso(const pPeso: Currency);
    procedure DeviceEnviar(const pTexto: string);
    function DeviceFormataPeso(const pValor: Currency; const pZeros: Integer): string;
  public
    { Public declarations }
  end;

  IRegistroPeso = interface
    ['{D5FE0F35-4878-4AD4-ABF4-9BFD18BB9CFE}']
    procedure Registrar(const pPeso: Currency; const pOnExcluir: TOnExcluirEvent);
    procedure ExcluirRegistros;
  end;

  TRegistroPeso = class(TInterfacedObject, IRegistroPeso)
  strict private
    { private declarations }
    FScrollBox: TScrollBox;
    procedure Registrar(const pPeso: Currency; const pOnExcluir: TOnExcluirEvent);
    procedure ExcluirRegistros;
    constructor Create(const pScrollBox: TScrollBox);
  protected
    { protected declarations }
  public
    { public declarations }
    class function Build(const pScrollBox: TScrollBox): IRegistroPeso;
  end;

var
  frmMain: TfrmMain;

implementation

uses
  System.RegularExpressions;

{$R *.dfm}

const
  STX = #02;
  ETX = #03;
  ENQ = #05;

  PESO_INSTAVEL = 'IIIII';
  PESO_NEGATIVO = 'NNNNN';
  PESO_SOBREPESO = 'SSSSS';

var
  gItemID: Integer;

{$REGION 'TRegistroPeso'}
class function TRegistroPeso.Build(const pScrollBox: TScrollBox): IRegistroPeso;
begin
  Result := Self.Create(pScrollBox);
end;

constructor TRegistroPeso.Create(const pScrollBox: TScrollBox);
begin
  FScrollBox := pScrollBox;
end;

procedure TRegistroPeso.ExcluirRegistros;
var
  I: Integer;
  lObj: TFrame;
begin
  for I := FScrollBox.ComponentCount-1 downto 0 do
  begin
    lObj := TFrame(FScrollBox.Components[I]);
    lObj.Parent := nil;
    FreeAndNil(lObj);
  end;
end;

procedure TRegistroPeso.Registrar(const pPeso: Currency; const pOnExcluir: TOnExcluirEvent);
var
  lfrmCardPeso: TfrmCardPeso;
begin
  Inc(gItemID);

  lfrmCardPeso := TfrmCardPeso.Create(FScrollBox);
  Sleep(5);
  lfrmCardPeso.Name := Format('frm_%s', [FormatDateTime('ddmmyyyy_hhnnss_zzz', Now)]);
  lfrmCardPeso.Top := 999999999;
  lfrmCardPeso.Align := TAlign.alTop;
  lfrmCardPeso.RegistrarPeso(gItemID, pPeso);
  lfrmCardPeso.OnExcluir := pOnExcluir;
  lfrmCardPeso.Parent := FScrollBox;
end;
{$ENDREGION}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FDevice := TBlockSerial.Create;
  FDevice.RaiseExcept := True;
  FormatTotalizador(FTotalizadorPeso);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FDevice.CloseSocket;
  FDevice.Free;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  GetPortas;
  btnComunicacaoAtivar.Enabled := (cbxComunicacaoPorta.Items.Count > 0);
  btnComunicacaoDesativar.Enabled := False;
  btnBalancaReset.Enabled := False;
  edtRegistroPesoToolbarPeso.Enabled := False;
  btnRegistroPesoToolbarRegistrarPeso.Enabled := False;
  cbxBalancaSimulacao.Enabled := False;
  tmrLerSerial.Enabled := False;
end;

procedure TfrmMain.GetPortas;
begin
  cbxComunicacaoPorta.Items.Clear;
  ACBrBAL.Device.AcharPortasSeriais(cbxComunicacaoPorta.Items);
end;

procedure TfrmMain.AtivarControles(const pAtivar: Boolean);
begin
  btnComunicacaoAtivar.Enabled := not pAtivar;
  btnComunicacaoDesativar.Enabled := pAtivar;
  cbxComunicacaoPorta.Enabled := not pAtivar;
  btnComunicacaoPortaRefresh.Enabled := not pAtivar;
  btnBalancaReset.Enabled := pAtivar;
  edtRegistroPesoToolbarPeso.Enabled := pAtivar;
  btnRegistroPesoToolbarRegistrarPeso.Enabled := pAtivar;
  cbxBalancaSimulacao.Enabled := pAtivar;
  tmrLerSerial.Enabled := pAtivar;
end;

procedure TfrmMain.btnBalancaResetClick(Sender: TObject);
begin
  TRegistroPeso
    .Build(scbRegistroPesoListagem)
    .ExcluirRegistros;

  gItemID := 0;
  FTotalizadorPeso := 0.000;
  FormatTotalizador(FTotalizadorPeso);

  cbxBalancaSimulacao.ItemIndex := 0;
  edtRegistroPesoToolbarPeso.Text := '0,000';
end;

procedure TfrmMain.btnComunicacaoAtivarClick(Sender: TObject);
var
  lPorta: string;
begin
  if (cbxComunicacaoPorta.ItemIndex = -1) then
    raise Exception.Create('Porta de comunicação não informada.');

  lPorta := cbxComunicacaoPorta.Items[cbxComunicacaoPorta.ItemIndex];

  FDevice.CloseSocket;
  FDevice.Connect(lPorta);
  FDevice.Config(9600, 8, 'N', 0, False, False);

  AtivarControles(FDevice.InstanceActive);
end;

procedure TfrmMain.btnComunicacaoDesativarClick(Sender: TObject);
begin
  FDevice.CloseSocket;
  AtivarControles(False);
end;

procedure TfrmMain.btnComunicacaoPortaRefreshClick(Sender: TObject);
begin
  GetPortas;
  btnComunicacaoAtivar.Enabled := (cbxComunicacaoPorta.Items.Count > 0);
end;

procedure TfrmMain.btnRegistroPesoToolbarRegistrarPesoClick(Sender: TObject);
var
  lPeso: Currency;
begin
  lPeso := StrToCurrDef(edtRegistroPesoToolbarPeso.Text, 1.000);
  TRegistroPeso.Build(scbRegistroPesoListagem).Registrar(lPeso, OnExcluirRegistroPeso);

  FTotalizadorPeso := (FTotalizadorPeso + lPeso);
  FormatTotalizador(FTotalizadorPeso);
end;

procedure TfrmMain.DeviceEnviar(const pTexto: string);
begin
  tmrLerSerial.Enabled := False;
  try
    FDevice.DeadlockTimeout := 1000;
    FDevice.Purge;
    FDevice.SendString(STX + pTexto + ETX);
  finally
    tmrLerSerial.Enabled := True;
  end;
end;

function TfrmMain.DeviceFormataPeso(const pValor: Currency; const pZeros: Integer): string;
var
  lMascara: string;
  lValor: Currency;
begin
  lValor := (pValor * 1000);
  lMascara := ('%' + IntToStr(pZeros) + '.' + IntToStr(pZeros) + 'd');

  Result := Format(lMascara, [Trunc(lValor)]);
end;

procedure TfrmMain.edtRegistroPesoToolbarPesoKeyPress(Sender: TObject; var Key: Char);
var
  lEdit: Tedit absolute Sender;
  lValorStr: string;
  lValorInt: Integer;
begin
  if not CharInSet(Key, ['0'..'9', #8]) then
  begin
    Key := #0;
    Exit;
  end;

  lValorStr := TRegEx.Replace(lEdit.Text, '\D', '');

  if (Key = #8) then
  begin
    if (Length(lValorStr) > 0) then
      Delete(lValorStr, Length(lValorStr), 1);
  end
  else
    lValorStr := (lValorStr + Key);

  if (lValorStr = EmptyStr) then
  begin
    lEdit.Text := '0,000';
  end
  else
  begin
    lValorInt := StrToInt64Def(lValorStr, 0);
    lEdit.Text := Format('%.3n', [(lValorInt/1000)]);
  end;

  lEdit.SelStart := Length(lEdit.Text);
  Key := #0;
end;

procedure TfrmMain.FormatTotalizador(const pPeso: Currency);
begin
  if (pPeso < 1.000) then
    pnlRegistroPesoListagemTotalizador.Caption := Format('%.3ng  ', [FTotalizadorPeso])
  else
    pnlRegistroPesoListagemTotalizador.Caption := Format('%.3nkg  ', [FTotalizadorPeso]);
end;

procedure TfrmMain.OnExcluirRegistroPeso(const pPeso: Currency);
begin
  FTotalizadorPeso := (FTotalizadorPeso - pPeso);
  FormatTotalizador(FTotalizadorPeso);
end;

procedure TfrmMain.tmrLerSerialTimer(Sender: TObject);
var
  lDeviceRecvData: string;
  lDeviceSendData: String;
begin
  try
    if (FDevice.WaitingData <= 0) then
      Exit;

    lDeviceRecvData := FDevice.RecvPacket(500);

    // VERIFICAR SE O PACOTE CORRESPONDE A PEDIDA DO PESO
    if (lDeviceRecvData = ENQ) then
    begin
      if (cbxBalancaSimulacao.ItemIndex = 1) then
        lDeviceSendData := PESO_SOBREPESO
      else
        if (cbxBalancaSimulacao.ItemIndex = 2) then
          lDeviceSendData := PESO_INSTAVEL
        else
          if (cbxBalancaSimulacao.ItemIndex = 3) then
            lDeviceSendData := PESO_NEGATIVO
          else
            lDeviceSendData := DeviceFormataPeso(FTotalizadorPeso, 5);

      DeviceEnviar(lDeviceSendData);
    end;

    Application.ProcessMessages;
  except
    on E: Exception do
    begin
      raise;
    end;
  end;
end;

initialization
  gItemID := 0;

end.
