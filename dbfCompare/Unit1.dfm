object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1057#1088#1072#1074#1085#1077#1085#1080#1077' '#1092#1072#1081#1083#1086#1074' DBF'
  ClientHeight = 605
  ClientWidth = 974
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 55
    Width = 974
    Height = 550
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRIPT'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KEYIMBASE'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUMMA'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 974
    Height = 55
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 166
      Top = 5
      Width = 31
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object Label2: TLabel
      Left = 78
      Top = 5
      Width = 82
      Height = 13
      Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091' 1:'
    end
    object Label3: TLabel
      Left = 166
      Top = 26
      Width = 31
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object Label4: TLabel
      Left = 78
      Top = 26
      Width = 82
      Height = 13
      Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091' 2:'
    end
    object Label5: TLabel
      Left = 78
      Top = 39
      Width = 31
      Height = 13
      Alignment = taCenter
      Caption = 'Label5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Image1: TImage
      Left = 246
      Top = 37
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
    object Edit1: TEdit
      Left = 789
      Top = 0
      Width = 185
      Height = 21
      TabOrder = 4
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 0
      Top = 21
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 264
      Top = 0
      Width = 75
      Height = 25
      Caption = #1057#1088#1072#1074#1085#1080#1090#1100
      Enabled = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 264
      Top = 21
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 440
    object N6: TMenuItem
      Caption = #1060#1072#1081#1083
      object N10: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1044
        OnClick = N10Click
      end
      object N7: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072
      end
      object N8: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1086#1090#1095#1077#1090#1072
      end
    end
    object N5: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dBASE' +
      ' Files'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 440
    Top = 464
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 520
    Top = 464
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ' ')
    Left = 584
    Top = 464
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 424
  end
  object OpenDialog1: TOpenDialog
    Left = 376
  end
end
