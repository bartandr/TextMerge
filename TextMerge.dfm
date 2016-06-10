object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Text Merge'
  ClientHeight = 350
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitTop = -8
    object Button1: TButton
      Left = 0
      Top = 2
      Width = 32
      Height = 32
      Caption = '1'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 32
      Top = 2
      Width = 32
      Height = 32
      Caption = '2'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 64
      Top = 2
      Width = 32
      Height = 32
      Caption = '3'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 96
      Top = 2
      Width = 32
      Height = 32
      Caption = '4'
      TabOrder = 3
    end
  end
  object LeftField: TRichEdit
    Left = 0
    Top = 33
    Width = 325
    Height = 317
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'LeftField')
    ParentFont = False
    TabOrder = 1
    Zoom = 100
  end
  object RightField: TRichEdit
    Left = 325
    Top = 33
    Width = 325
    Height = 317
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RightField')
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
  object MainMenu: TMainMenu
    Left = 616
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = 'Save'
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object AbotTextMerge1: TMenuItem
        Caption = 'Abot Text Merge'
      end
    end
  end
end
