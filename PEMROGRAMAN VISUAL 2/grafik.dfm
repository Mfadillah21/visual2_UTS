object Form1: TForm1
  Left = 656
  Top = 124
  Width = 735
  Height = 331
  Caption = '1.3 Grafik dan Stringgrid'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 18
    Width = 48
    Height = 13
    Caption = 'PENYAKIT'
  end
  object Label2: TLabel
    Left = 20
    Top = 43
    Width = 98
    Height = 13
    Caption = 'JUMLAH PENDERITA'
  end
  object ComboBox1: TComboBox
    Left = 130
    Top = 13
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'COVID 19'
      'FLU BIASA'
      'DEMAM'
      'RINDU')
  end
  object Edit1: TEdit
    Left = 130
    Top = 39
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 108
    Top = 69
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = Button1Click
  end
  object strngrd1: TStringGrid
    Left = 20
    Top = 105
    Width = 254
    Height = 134
    ColCount = 2
    FixedCols = 0
    TabOrder = 3
    ColWidths = (
      94
      64)
  end
  object Chart1: TChart
    Left = 292
    Top = 12
    Width = 410
    Height = 262
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
    TabOrder = 4
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
  object BitBtn1: TBitBtn
    Left = 21
    Top = 249
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object Button2: TButton
    Left = 109
    Top = 249
    Width = 75
    Height = 25
    Caption = 'Abort'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 198
    Top = 249
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 7
    OnClick = Button3Click
  end
end
