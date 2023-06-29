object Form2: TForm2
  Left = 337
  Top = 629
  Width = 838
  Height = 486
  Caption = 'FORM TAMBAH DATA JADAWAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GB1: TGroupBox
    Left = 11
    Top = 10
    Width = 803
    Height = 233
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 21
      Width = 52
      Height = 13
      Caption = 'JAM AWAL'
    end
    object Label2: TLabel
      Left = 295
      Top = 21
      Width = 54
      Height = 13
      Caption = 'JAM AKHIR'
    end
    object Label3: TLabel
      Left = 17
      Top = 55
      Width = 99
      Height = 13
      Caption = 'HARI PELAKSANAAN'
    end
    object Label4: TLabel
      Left = 17
      Top = 83
      Width = 46
      Height = 13
      Caption = 'TANGGAL'
    end
    object Label5: TLabel
      Left = 17
      Top = 112
      Width = 49
      Height = 13
      Caption = 'RUANGAN'
    end
    object Label6: TLabel
      Left = 17
      Top = 134
      Width = 67
      Height = 13
      Caption = 'MATA KULIAH'
    end
    object Label7: TLabel
      Left = 17
      Top = 159
      Width = 30
      Height = 13
      Caption = 'KELAS'
    end
    object Label8: TLabel
      Left = 17
      Top = 186
      Width = 67
      Height = 13
      Caption = 'TOTAL HADIR'
    end
    object Edit1: TEdit
      Left = 153
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '00:00'
    end
    object Edit2: TEdit
      Left = 369
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '00:00'
    end
    object ComboBox1: TComboBox
      Left = 153
      Top = 48
      Width = 336
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '....PILIH HARI....'
      Items.Strings = (
        'SENIN'
        'SELASA'
        'RABU'
        'KAMIS'
        'JUM'#39'AT'
        'SABTU'
        'MINGGU')
    end
    object dtp1: TDateTimePicker
      Left = 153
      Top = 76
      Width = 186
      Height = 21
      Date = 45106.817539479170000000
      Time = 45106.817539479170000000
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 153
      Top = 104
      Width = 335
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 153
      Top = 130
      Width = 335
      Height = 21
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 153
      Top = 155
      Width = 335
      Height = 21
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 154
      Top = 180
      Width = 335
      Height = 21
      TabOrder = 7
    end
    object Button1: TButton
      Left = 689
      Top = 23
      Width = 75
      Height = 35
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 689
      Top = 65
      Width = 75
      Height = 35
      Caption = 'EDIT'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 689
      Top = 106
      Width = 75
      Height = 35
      Caption = 'HAPUS'
      TabOrder = 10
    end
    object Button4: TButton
      Left = 689
      Top = 149
      Width = 75
      Height = 35
      Caption = 'BATAL'
      TabOrder = 11
    end
  end
  object dg1: TDBGrid
    Left = 9
    Top = 242
    Width = 803
    Height = 198
    DataSource = Form1.DS1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
