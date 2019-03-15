object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1080#1090#1100
  ClientHeight = 250
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 50
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label2: TLabel
    Left = 24
    Top = 77
    Width = 19
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 49
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label4: TLabel
    Left = 24
    Top = 131
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label5: TLabel
    Left = 24
    Top = 156
    Width = 25
    Height = 13
    Caption = #1060#1072#1082#1089
  end
  object Label6: TLabel
    Left = 24
    Top = 183
    Width = 61
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
  end
  object Button1: TButton
    Left = 88
    Top = 216
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 216
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 47
    Width = 171
    Height = 21
    DataField = 'Fam'
    DataSource = Form1.DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 74
    Width = 171
    Height = 21
    DataField = 'Name1'
    DataSource = Form1.DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 101
    Width = 171
    Height = 21
    DataField = 'Name2'
    DataSource = Form1.DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 128
    Width = 171
    Height = 21
    DataField = 'Tel'
    DataSource = Form1.DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 88
    Top = 153
    Width = 171
    Height = 21
    DataField = 'Fax'
    DataSource = Form1.DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 88
    Top = 180
    Width = 171
    Height = 21
    DataField = 'Prim'
    DataSource = Form1.DataSource1
    TabOrder = 7
  end
end
