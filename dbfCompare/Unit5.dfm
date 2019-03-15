object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1044'...'
  ClientHeight = 78
  ClientWidth = 294
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
    Top = 11
    Width = 55
    Height = 13
    Caption = #1055#1091#1090#1100' '#1082' '#1041#1044':'
  end
  object Button2: TButton
    Left = 206
    Top = 35
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1044
    TabOrder = 0
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 85
    Top = 8
    Width = 196
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object OpenDialog1: TOpenDialog
    FileName = '*.dbf'
    Left = 24
    Top = 32
  end
end
