object Form1: TForm1
  Left = 697
  Top = 150
  Width = 662
  Height = 480
  Caption = 'Tugas Mandiri 04 '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 20
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Label2: TLabel
    Left = 16
    Top = 50
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object ComboBox2: TComboBox
    Left = 136
    Top = 77
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'TI'
      'SI')
  end
  object Edit1: TEdit
    Left = 136
    Top = 46
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 110
    Width = 85
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 114
    Top = 111
    Width = 85
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 3
    OnClick = Button2Click
  end
  object strngrd1: TStringGrid
    Left = 296
    Top = 16
    Width = 332
    Height = 120
    ColCount = 4
    FixedRows = 0
    TabOrder = 4
    ColWidths = (
      64
      42
      44
      43)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object Chart1: TChart
    Left = 16
    Top = 149
    Width = 613
    Height = 285
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 5
    object psrsSeries1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 15
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = '20'
    Items.Strings = (
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023'
      '2024')
  end
  object Button3: TButton
    Left = 211
    Top = 110
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 7
    OnClick = Button3Click
  end
end
