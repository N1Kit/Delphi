object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1057#1088#1072#1074#1085#1077#1085#1080#1077
  ClientHeight = 113
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 8
    Top = 40
    Width = 69
    Height = 13
    Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
  end
  object Label5: TLabel
    Left = 8
    Top = 84
    Width = 69
    Height = 13
    Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
  end
  object Label2: TLabel
    Left = 0
    Top = 100
    Width = 266
    Height = 13
    Align = alBottom
    Alignment = taCenter
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Transparent = True
    Layout = tlBottom
    Visible = False
    ExplicitWidth = 31
  end
  object Label1: TLabel
    Left = 83
    Top = 40
    Width = 28
    Height = 13
    Caption = 'label1'
    Visible = False
  end
  object Label3: TLabel
    Left = 83
    Top = 84
    Width = 28
    Height = 13
    Caption = 'label3'
    Visible = False
  end
  object Image1: TImage
    Left = 219
    Top = 97
    Width = 17
    Height = 17
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
      001008060000001FF3FF610000001974455874536F6674776172650041646F62
      6520496D616765526561647971C9653C0000021D4944415478DA63FCFFFF3F03
      258091858505971C0F10D741D94D40FC855403026B6A127318800E6C699D3F05
      C85F4F8A01E29292C255D72E4E4F6360F8C7A0A59735EBF98B776D40F197C41A
      9032737A51666C90981103308C16AF7B762E3D6BF274A0F81C620C50D7D555A8
      3CB6B732A6BEE3263348A0A14CE1AFB54BCF92CB571EB503B937510C60666646
      E6330171F9E67515C9B6C67F942B3BBE8205DBCBB9180E9EFA79D73F6CCA5C20
      B79301E42F1C0658BB3AEB94AE5914E1FFE7FB238682C6EF60C109F59C0C4C6C
      C20CA1716B36EE3970BB1B2874149B011C4C4C8C2DC7F797C6294B7D10FDF5F7
      07835BC83986972F5F32ECD9AC0F0A0A8647CFD85EFB876C5F044C3B3540F53F
      D00D084C8C352FE86C34B77BFFE536C3B73F5F18F4F40F80252E5EB007D3CC4C
      6CC028BD7D68F59AC71360D10A3340888787BDEFD8BEA81056F69BDC7FFFFF01
      6B1015F304D3AF5F6D87FBF1EDDB3F5FBDFC2EAEF9FAF56F1190FB8E91890914
      6E0C19E5C57A191929DCFA7FFF7E832B56D23A0FA6EF5D334489A669B35E5EEC
      9BF462069039036480A29424C784C33B75BDD859BFA0C4A994FA5530FDECA636
      8A01DF7FFCFB63EF756FDBB3E7BF0B188160EAE44E199F88601EB9FFFFFF02A5
      11998B5B28184C7F7DB71623A5AD58FBF9515EC5CB2D8C60673032EA800C06D2
      5F81189469BE0169501CFE869AC80C0C797620CD05A4B94166836820BEC6084D
      3C1C40CC09C4EC0CC4815F204B40510900C370CED4F5FA0C710000000049454E
      44AE426082}
    Visible = False
  end
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 59
    Width = 75
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 16
    Width = 75
    Height = 25
    Caption = #1057#1088#1072#1074#1085#1080#1090#1100
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 184
    Top = 59
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 3
    OnClick = Button4Click
  end
  object OpenDialog1: TOpenDialog
    FileName = '*.dbf'
    Left = 120
    Top = 32
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 120
  end
end
