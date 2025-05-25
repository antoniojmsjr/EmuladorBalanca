object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = ':: Emulador Balan'#231'a ::'
  ClientHeight = 561
  ClientWidth = 534
  Color = clWhite
  Constraints.MinHeight = 350
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bvlHeader: TBevel
    AlignWithMargins = True
    Left = 3
    Top = 54
    Width = 528
    Height = 5
    Align = alTop
    Shape = bsTopLine
    ExplicitLeft = 216
    ExplicitTop = 152
    ExplicitWidth = 50
  end
  object pnlHeader: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 528
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Emulador Balan'#231'a'
    Color = 13743257
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlClient: TPanel
    Left = 0
    Top = 62
    Width = 534
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlClient'
    ShowCaption = False
    TabOrder = 1
    object gbxConfiguracao: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 528
      Height = 50
      Align = alTop
      Caption = ' Configura'#231#227'o '
      TabOrder = 0
      object lblComunicacaoPorta: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 120
        Height = 27
        Align = alLeft
        AutoSize = False
        Caption = 'Porta de comunica'#231#227'o:'
        Layout = tlCenter
      end
      object btnComunicacaoPortaRefresh: TSpeedButton
        AlignWithMargins = True
        Left = 278
        Top = 17
        Width = 30
        Height = 27
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alLeft
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000B8B9B6B8B9B6
          B8B9B6B8B9B6B0B7AB97AE8183A85779A53B7BA54088A9629EB08DB5B8B3B8B9
          B6B6B9B47BA540B8B9B6B8B9B6B8B9B6B8B9B69FB18F7BA64279A53A79A53A79
          A53A79A53A79A53A79A53A81A752ABB5A3B4B8B17CA6447BA540B8B9B6B8B9B6
          9DB08B79A53A79A53A90AC73AAB4A1B4B8B1B2B7AEA5B29886A95E79A53A7CA6
          43A6B39B79A53A7CA643B8B9B6A9B4A07AA53C7AA53CA1B193B8B9B6B8B9B6B8
          B9B6B8B9B6B8B9B6B6B9B491AC7579A53A7DA64879A53A79A53AB8B9B687A960
          79A53A98AE83B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B6B9B4B4B8B1B3B7AE85A8
          5C79A53A79A53A79A53AACB5A479A53A7EA649B5B8B2B8B9B6B8B9B6B8B9B6B8
          B9B6B8B9B67BA5407CA64379A53A79A53A79A53A79A53A79A53A9DB08C79A53A
          93AC78B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B67BA5407AA53D79A5
          3A79A53A79A53A79A53AB8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
          B9B6B8B9B6B8B9B6B8B9B6B7B9B5B7B9B5B7B9B5B7B9B5B7B9B5B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
          B6B8B9B6B8B9B6B8B9B679A53B79A53A79A53A79A53A7CA6447BA540B8B9B6B8
          B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B68DAB6E79A53AA2B29479A53A79A53A
          79A53A79A53A79A53A7FA74C7BA641B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B3B8
          AF7BA64179A53AB0B6AB79A53A79A53A79A53A89A964B2B7AEB3B7AFB6B9B4B8
          B9B6B8B9B6B8B9B6B8B9B6B8B9B693AD7A79A53A8CAA6CB8B9B679A53A79A53B
          7DA64779A53A95AD7DB7B9B5B8B9B6B8B9B6B8B9B6B8B9B6B7B9B69CAF8979A5
          3A7BA540ADB5A6B8B9B67AA53D7AA53DA6B39B7AA53D79A53A88A963A5B39AB2
          B7ADB2B7AEA8B39D8CAA6B79A53A79A53AA1B191B8B9B6B8B9B67AA53F7BA642
          B8B9B6A8B49E7FA74E79A53A79A53A79A53A79A53A79A53A79A53A7DA647A3B2
          96B8B9B6B8B9B6B8B9B6B8B9B67BA540B8B9B6B8B9B6B4B8B19DB08B88A9627B
          A6427BA54086A95E9AAF87B2B7AEB8B9B6B8B9B6B8B9B6B8B9B6}
        OnClick = btnComunicacaoPortaRefreshClick
        ExplicitLeft = 282
        ExplicitHeight = 29
      end
      object cbxComunicacaoPorta: TComboBox
        AlignWithMargins = True
        Left = 128
        Top = 20
        Width = 140
        Height = 21
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
      end
      object btnComunicacaoAtivar: TButton
        AlignWithMargins = True
        Left = 357
        Top = 18
        Width = 80
        Height = 27
        Cursor = crHandPoint
        Align = alRight
        Caption = 'Ativar'
        TabOrder = 1
        OnClick = btnComunicacaoAtivarClick
      end
      object btnComunicacaoDesativar: TButton
        AlignWithMargins = True
        Left = 443
        Top = 18
        Width = 80
        Height = 27
        Cursor = crHandPoint
        Align = alRight
        Caption = 'Desativar'
        TabOrder = 2
        OnClick = btnComunicacaoDesativarClick
      end
    end
    object gbxBalanca: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 61
      Width = 528
      Height = 55
      Margins.Top = 5
      Align = alTop
      Caption = ' Balan'#231'a '
      TabOrder = 1
      object bvlBalanca: TBevel
        AlignWithMargins = True
        Left = 186
        Top = 18
        Width = 5
        Height = 32
        Align = alLeft
        Shape = bsLeftLine
        ExplicitLeft = 175
        ExplicitTop = 20
      end
      object lblBalancaSimulacao: TLabel
        AlignWithMargins = True
        Left = 204
        Top = 18
        Width = 45
        Height = 32
        Margins.Left = 10
        Align = alLeft
        AutoSize = False
        Caption = 'Simular:'
        Layout = tlCenter
      end
      object btnBalancaReset: TButton
        AlignWithMargins = True
        Left = 5
        Top = 19
        Width = 175
        Height = 30
        Cursor = crHandPoint
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alLeft
        Caption = 'Resetar Balan'#231'a'
        TabOrder = 0
        OnClick = btnBalancaResetClick
      end
      object cbxBalancaSimulacao: TComboBox
        AlignWithMargins = True
        Left = 252
        Top = 23
        Width = 100
        Height = 21
        Margins.Left = 0
        Margins.Top = 8
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        AutoDropDown = True
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Peso'
        Items.Strings = (
          'Peso'
          'Sobrepeso'
          'Peso Inst'#225'vel'
          'Peso Negativo')
      end
    end
    object pnlRegistroPeso: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 122
      Width = 528
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Registro de Peso'
      Color = 13743257
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object pnlRegistroPesoListagem: TPanel
      Left = 0
      Top = 145
      Width = 300
      Height = 354
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnlRegistroPesoListagem'
      ShowCaption = False
      TabOrder = 3
      object pnlRegistroPesoListagemTotalizador: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 306
        Width = 297
        Height = 45
        Margins.Right = 0
        Align = alBottom
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = '0,000 '
        Color = 13743257
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object scbRegistroPesoListagem: TScrollBox
        Left = 0
        Top = 0
        Width = 300
        Height = 303
        HorzScrollBar.Style = ssFlat
        VertScrollBar.Style = ssFlat
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        ParentColor = False
        TabOrder = 1
      end
    end
    object pnlRegistroPesoToolbar: TPanel
      Left = 300
      Top = 145
      Width = 234
      Height = 354
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlRegistroPesoToolbar'
      ShowCaption = False
      TabOrder = 4
      object bvlRegistroPesoToolbar: TBevel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 5
        Height = 348
        Align = alLeft
        Shape = bsLeftLine
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitHeight = 354
      end
      object lblRegistroPesoToolbarPeso: TLabel
        Left = 100
        Top = 16
        Width = 14
        Height = 13
        Caption = 'Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnRegistroPesoToolbarRegistrarPeso: TButton
        Left = 130
        Top = 5
        Width = 95
        Height = 25
        Caption = 'Registrar Peso'
        TabOrder = 1
        OnClick = btnRegistroPesoToolbarRegistrarPesoClick
      end
      object edtRegistroPesoToolbarPeso: TEdit
        Left = 15
        Top = 8
        Width = 80
        Height = 22
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0,000'
        OnKeyPress = edtRegistroPesoToolbarPesoKeyPress
      end
    end
  end
  object ACBrBAL: TACBrBAL
    Porta = 'COM1'
    Left = 24
    Top = 8
  end
  object tmrLerSerial: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmrLerSerialTimer
    Left = 72
    Top = 8
  end
end
