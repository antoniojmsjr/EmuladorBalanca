object frmCardPeso: TfrmCardPeso
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 300
  Height = 40
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object bvlCardPeso: TBevel
    Left = 0
    Top = 37
    Width = 300
    Height = 5
    Align = alTop
    Shape = bsTopLine
    ExplicitTop = 41
    ExplicitWidth = 320
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlClient'
    ShowCaption = False
    TabOrder = 0
    object lblTexto: TLabel
      Left = 0
      Top = 0
      Width = 230
      Height = 37
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = '0,000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5329233
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object btnExcluir: TSpeedButton
      Left = 230
      Top = 0
      Width = 50
      Height = 37
      Cursor = crHandPoint
      Align = alLeft
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        2000000000004006000000000000000000000000000000000000000000000000
        0000000000000000000000000000000102020D1333401D2B7390273A9DC42C42
        B2DE2C42B1DD273A9BC21C2A718D0C122F3B0000010100000000000000000000
        00000000000000000000000000000000000000000000000000000C12303C283C
        A2CC324BCAFE324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF334CCCFF324B
        CAFE273A9EC60A102A3500000000000000000000000000000000000000000000
        00000000000017225D75314AC7FA324BCBFF324BCBFF324BCBFF324BCBFF324B
        CBFF324BCBFF324BCBFF334CCCFF324BCAFE324BCAFE3149C5F8151F546A0000
        00000000000000000000000000000000000018236078324BCAFE324BCAFE324B
        CBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF334CCCFF324B
        CAFE324BCAFE324BCAFE324BCAFE151F546A0000000000000000000000000C12
        313E314AC8FB324BCAFE324BCAFE324BCAFE324BCAFE324BCAFE324BCAFE324B
        CAFE324BCAFE324BCAFE324BCAFE324BCAFE324BCAFE324BCAFE324BCAFE3149
        C6F90A0F29340000000001010203293DA6D0324BCBFF324BCBFF324BCAFE334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324B
        CBFF324BCBFF324BCBFF324BCBFF324BCBFF263A9CC4000001010E143644324B
        CAFE324BCBFF324BCBFF324BCAFE334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF324BCBFF324BCBFF324BCBFF324BCBFF324B
        CBFF324BCAFE0B112E3A1E2D7A98324BCBFF324BCBFF324BCBFF324BCAFE334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324B
        CBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF1B296F8B293DA4CD324B
        CBFF324BCBFF3D55CEFF6578D7FE6678D8FF6678D8FF6678D8FF6678D8FF6678
        D8FF6678D8FF6678D8FF6678D8FF6578D8FF6578D8FF6578D8FF4259CFFF324B
        CBFF324BCBFF26399AC12E45BAE8324BCBFF324BCBFF5E72D6FFFDFDFDFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F81DBFF324BCBFF324BCBFF2B40AEDB2F45BAE9324B
        CBFF324BCBFF5E72D6FFFDFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F81DBFF324B
        CBFF324BCBFF2B41AFDC2A3EA7D1324BCBFF324BCBFF3C54CEFF5F73D6FE5F73
        D7FF5F73D7FF5F73D7FF5F73D7FF5F73D7FF5F73D7FF5F73D7FF5F73D7FF5F73
        D7FF5F73D7FF5F73D7FF4057CFFF324BCBFF324BCBFF263A9CC41F2F7E9D334C
        CCFF334CCCFF334CCCFF324BCAFE334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF1C2B73910F173E4D324BCAFE324BCAFE324BCAFE324BCAFE324B
        CBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF334CCCFF324B
        CAFE324BCAFE324BCAFE324BCAFE324BCAFE324BCAFE0D133441010104052A40
        ACD8324BCAFE324BCAFE324BCAFE324BCBFF324BCBFF324BCBFF324BCBFF324B
        CBFF324BCBFF324BCBFF334CCCFF324BCAFE324BCAFE324BCAFE324BCAFE324B
        CAFE283DA4CE00010202000000000F163B4A324AC9FD324BCAFE324BCAFE324B
        CBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF334CCCFF324B
        CAFE324BCAFE324BCAFE324BCAFE314AC8FB0C13323F00000000000000000000
        00001B286D89324BCAFE324BCAFE324BCBFF324BCBFF324BCBFF324BCBFF324B
        CBFF324BCBFF324BCBFF334CCCFF324BCAFE324BCAFE324BCAFE324BCAFE1824
        627B00000000000000000000000000000000000102021B296E8A324AC9FD324B
        CBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF324BCBFF334CCCFF324B
        CAFE324BCAFE314AC9FC1925657F000001010000000000000000000000000000
        00000000000000000000101840502B41B0DD324BCBFF324BCBFF324BCBFF324B
        CBFF324BCBFF324BCBFF334CCCFF324BCAFE2A40ACD80E153948000000000000
        0000000000000000000000000000000000000000000000000000000000000102
        060711194455213184A62B41AFDC3047C1F32F47C1F22B40AEDA203082A31018
        4050010104050000000000000000000000000000000000000000}
      OnClick = btnExcluirClick
      ExplicitLeft = 180
      ExplicitHeight = 35
    end
  end
end
