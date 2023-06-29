object Form1: TForm1
  Left = 972
  Top = 248
  Width = 407
  Height = 336
  Caption = 'Praktek Mandiri 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 57
    Height = 13
    Caption = 'INPUTAN 1'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 57
    Height = 13
    Caption = 'INPUTAN 2'
  end
  object Einput1: TEdit
    Left = 112
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Einput2: TEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Bsemua: TButton
    Left = 256
    Top = 40
    Width = 113
    Height = 33
    Caption = 'PROSES SEMUA'
    TabOrder = 2
    OnClick = BsemuaClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 104
    Width = 361
    Height = 177
    Caption = 'NILAI PROSES'
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 79
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object Label4: TLabel
      Left = 16
      Top = 64
      Width = 80
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object Label5: TLabel
      Left = 16
      Top = 104
      Width = 57
      Height = 13
      Caption = 'HASIL KALI'
    end
    object Label6: TLabel
      Left = 16
      Top = 144
      Width = 97
      Height = 13
      Caption = 'HASIL PEMBAGIAN'
    end
    object Etambah: TEdit
      Left = 136
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Ekurang: TEdit
      Left = 136
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Ekali: TEdit
      Left = 136
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Ebagi: TEdit
      Left = 136
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Btambah: TButton
      Left = 273
      Top = 16
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = BtambahClick
    end
    object Bkurang: TButton
      Left = 272
      Top = 56
      Width = 75
      Height = 25
      Caption = '--'
      TabOrder = 5
      OnClick = BkurangClick
    end
    object Bkali: TButton
      Left = 272
      Top = 96
      Width = 75
      Height = 25
      Caption = 'x'
      TabOrder = 6
      OnClick = BkaliClick
    end
    object Bbagi: TButton
      Left = 272
      Top = 136
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = BbagiClick
    end
  end
end
