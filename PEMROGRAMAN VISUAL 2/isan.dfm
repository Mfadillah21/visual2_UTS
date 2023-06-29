object Form1: TForm1
  Left = 313
  Top = 142
  Width = 669
  Height = 622
  Caption = 'Form1'
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
    Left = 25
    Top = 17
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Label2: TLabel
    Left = 25
    Top = 43
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label3: TLabel
    Left = 25
    Top = 70
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object ComboBox1: TComboBox
    Left = 151
    Top = 12
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object ComboBox2: TComboBox
    Left = 151
    Top = 69
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 151
    Top = 40
    Width = 142
    Height = 21
    TabOrder = 2
  end
  object strngrd1: TStringGrid
    Left = 311
    Top = 13
    Width = 320
    Height = 141
    ColCount = 3
    TabOrder = 3
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object Button1: TButton
    Left = 30
    Top = 106
    Width = 75
    Height = 25
    Caption = 'ADDN DATA'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 120
    Top = 106
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 212
    Top = 106
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 6
  end
  object cht1: TChart
    Left = 26
    Top = 167
    Width = 603
    Height = 250
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
    TabOrder = 7
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
end
