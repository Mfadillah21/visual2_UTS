object Form1: TForm1
  Left = 648
  Top = 79
  Width = 539
  Height = 353
  Caption = 'Tugas Mandiri 2'
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
    Left = 30
    Top = 125
    Width = 99
    Height = 13
    Caption = 'NILAI KEHADIRAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 30
    Top = 153
    Width = 72
    Height = 13
    Caption = 'NILAI TUGAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 30
    Top = 181
    Width = 56
    Height = 13
    Caption = 'NILAI UTS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 323
    Top = 125
    Width = 29
    Height = 13
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 323
    Top = 163
    Width = 34
    Height = 13
    Caption = 'Grade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 30
    Top = 209
    Width = 78
    Height = 13
    Caption = 'NILAI HARIAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 30
    Top = 236
    Width = 57
    Height = 13
    Caption = 'NILAI UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 323
    Top = 199
    Width = 22
    Height = 13
    Caption = 'Ket.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlcontoh: TPanel
    Left = 25
    Top = 15
    Width = 473
    Height = 41
    Caption = 'CEK NILAI BOBOT SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlnilai: TPanel
    Left = 157
    Top = 73
    Width = 65
    Height = 30
    Caption = 'Nilai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnlbobot: TPanel
    Left = 238
    Top = 73
    Width = 65
    Height = 30
    Caption = 'Bobot'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Ekehadiran: TEdit
    Left = 157
    Top = 119
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object Etugas: TEdit
    Left = 157
    Top = 147
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object Euts: TEdit
    Left = 157
    Top = 176
    Width = 65
    Height = 21
    TabOrder = 5
  end
  object Ekehadiran_b: TEdit
    Left = 238
    Top = 119
    Width = 65
    Height = 21
    TabOrder = 6
  end
  object Etugas_b: TEdit
    Left = 238
    Top = 147
    Width = 65
    Height = 21
    TabOrder = 7
  end
  object Euts_b: TEdit
    Left = 238
    Top = 176
    Width = 65
    Height = 21
    TabOrder = 8
  end
  object Etotal: TEdit
    Left = 376
    Top = 119
    Width = 65
    Height = 21
    TabOrder = 9
  end
  object Egrade: TEdit
    Left = 376
    Top = 156
    Width = 65
    Height = 21
    TabOrder = 10
  end
  object Bhitung: TButton
    Left = 131
    Top = 274
    Width = 68
    Height = 25
    Caption = 'Hitung'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BhitungClick
  end
  object Bhapus: TButton
    Left = 226
    Top = 274
    Width = 68
    Height = 25
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BhapusClick
  end
  object Bkeluar: TButton
    Left = 319
    Top = 274
    Width = 68
    Height = 25
    Caption = 'Keluar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BkeluarClick
  end
  object Eharian: TEdit
    Left = 157
    Top = 203
    Width = 65
    Height = 21
    TabOrder = 14
  end
  object Euas: TEdit
    Left = 157
    Top = 230
    Width = 65
    Height = 21
    TabOrder = 15
  end
  object Eharian_b: TEdit
    Left = 238
    Top = 203
    Width = 65
    Height = 21
    TabOrder = 16
  end
  object Euas_b: TEdit
    Left = 238
    Top = 231
    Width = 65
    Height = 21
    TabOrder = 17
  end
  object Eket: TEdit
    Left = 376
    Top = 193
    Width = 122
    Height = 21
    TabOrder = 18
  end
end
