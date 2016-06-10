object OpenFiles: TOpenFiles
  Left = 128
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Open Files'
  ClientHeight = 148
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object RightLabel: TLabel
    Left = 32
    Top = 67
    Width = 106
    Height = 13
    Caption = 'Open file lo right field:'
  end
  object LeftLabel: TLabel
    Left = 32
    Top = 21
    Width = 100
    Height = 13
    Caption = 'Open file lo left field:'
  end
  object BrowseLeft: TButton
    Left = 344
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 0
    OnClick = BrowseLeftClick
  end
  object BrowseRight: TButton
    Left = 344
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 1
    OnClick = BrowseRightClick
  end
  object LeftBrowse: TEdit
    Left = 32
    Top = 40
    Width = 290
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = 'File...'
  end
  object RightBrowse: TEdit
    Left = 32
    Top = 86
    Width = 290
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'File...'
  end
  object CloseOpen: TButton
    Left = 204
    Top = 113
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 4
    OnClick = CloseOpenClick
  end
  object OpenDialog1: TOpenDialog
    Left = 456
    Top = 48
  end
end
