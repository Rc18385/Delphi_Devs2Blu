object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 327
  ClientWidth = 418
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
    Left = 136
    Top = 8
    Width = 147
    Height = 19
    Caption = 'Verificar Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 296
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 296
    Top = 296
    Width = 3
    Height = 13
  end
  object Memo1: TMemo
    Left = 8
    Top = 72
    Width = 402
    Height = 201
    Alignment = taCenter
    Lines.Strings = (
      
        'Pre'#231'o de Custo        /        Pre'#231'o De Venda        /        Re' +
        'sultado'
      '')
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 41
    Width = 402
    Height = 25
    Caption = 'Come'#231'ar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
