object SaveFiles: TSaveFiles
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Save File'
  ClientHeight = 148
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LRadioButton: TRadioButton
    Left = 32
    Top = 24
    Width = 113
    Height = 17
    Caption = 'Left Field'
    TabOrder = 0
  end
  object RRadioButton: TRadioButton
    Left = 144
    Top = 24
    Width = 113
    Height = 17
    Caption = 'Right Field'
    TabOrder = 1
  end
  object SaveButton: TButton
    Left = 48
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
    OnClick = SaveButtonClick
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Text|*.txt'
    Left = 128
    Top = 72
  end
end
