object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 302
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 182
    Height = 16
    Caption = 'Conversor de Temperaturas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 59
    Top = 55
    Width = 87
    Height = 16
    Caption = 'Digite o Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Graus: TLabel
    Left = 16
    Top = 224
    Width = 3
    Height = 13
  end
  object Fahren: TLabel
    Left = 16
    Top = 248
    Width = 3
    Height = 13
  end
  object Kelvin: TLabel
    Left = 16
    Top = 272
    Width = 3
    Height = 13
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 120
    Width = 185
    Height = 41
    Align = alCustom
    BiDiMode = bdRightToLeftNoAlign
    Caption = 'Entre com o tipo de Temperatura'
    Columns = 3
    Items.Strings = (
      'C'#176
      #176'F'
      'K')
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 85
    Width = 185
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 167
    Width = 184
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
