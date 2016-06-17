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
    ParentFont = False
    TabOrder = 1
    Zoom = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 35
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 2
      Width = 50
      Height = 32
      Hint = 'Dedicated to left'
      Caption = 'To left'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 48
      Top = 2
      Width = 50
      Height = 32
      Hint = 'Dedicated to right'
      Caption = 'To Right'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 94
      Top = 2
      Width = 50
      Height = 32
      Hint = 'All Left'
      Caption = 'All Left'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 142
      Top = 2
      Width = 50
      Height = 32
      Hint = 'All Right'
      Caption = 'All Right'
      TabOrder = 3
      OnClick = Button4Click
    end
    object CheckButton: TButton
      Left = 250
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Check'
      TabOrder = 4
      OnClick = CheckButtonClick
    end
    object UnCheckButton: TButton
      Left = 331
      Top = 5
      Width = 75
      Height = 25
      Caption = 'UnCheck'
      TabOrder = 5
      OnClick = UnCheckButtonClick
    end
  end
  object RightField: TRichEdit
    Left = 325
    Top = 34
    Width = 325
    Height = 317
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
        OnClick = Save1Click
      end
    end
  end
end
