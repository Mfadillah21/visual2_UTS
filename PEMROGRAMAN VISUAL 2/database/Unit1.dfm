object Form1: TForm1
  Left = 392
  Top = 133
  Width = 928
  Height = 577
  Caption = 'VIEW DATA JADWAL PRAKTIKUM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 768
    Top = 8
    Width = 135
    Height = 35
    Caption = 'VIEW GRAFIK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 627
    Top = 9
    Width = 135
    Height = 35
    Caption = 'VIEW REPORT'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 486
    Top = 9
    Width = 135
    Height = 35
    Caption = 'LOAD DATA'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 9
    Width = 135
    Height = 35
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 3
    OnClick = Button4Click
  end
  object cht1: TChart
    Left = 10
    Top = 228
    Width = 893
    Height = 305
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'GRAFIK KEHADIRAN PRAKTIKUM MAHASISWA')
    TabOrder = 4
    object brsrsSeries1: TBarSeries
      ColorEachPoint = True
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object dg1: TDBGrid
    Left = 13
    Top = 54
    Width = 894
    Height = 171
    DataSource = DS1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=jadwa' +
      'l_db.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 12
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 92
  end
  object qry1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 55
    Top = 65534
  end
  object frxdbjadwal: TfrxDBDataset
    UserName = 'frxdbjadwal'
    CloseDataSource = False
    DataSet = qry1
    Left = 656
    Top = 75
  end
  object frxrpjadwal: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.636148831000000000
    ReportOptions.LastChange = 45106.677669120370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClickObject = frxrpjadwalClickObject
    Left = 650
    Top = 125
    Datasets = <
      item
        DataSet = frxdbjadwal
        DataSetName = 'frxdbjadwal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 188.976500000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA PRAKTIKUM SEMESTER GANJIL 2019')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 215.433210000000000000
        Width = 793.701300000000000000
        DataSet = frxdbjadwal
        DataSetName = 'frxdbjadwal'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 60.472480000000000000
          Width = 211.653680000000000000
          Height = 41.574830000000000000
          TagStr = '[frxdbjadwal."kelas"]'
          DataField = 'kelas'
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbjadwal."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 272.126160000000000000
          Width = 215.433210000000000000
          Height = 41.574830000000000000
          DataField = 'matkul'
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbjadwal."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 487.559370000000000000
          Width = 192.756030000000000000
          Height = 41.574830000000000000
          DataField = 'tanggal'
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbjadwal."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 680.315400000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          DataField = 'kehadiran_total'
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbjadwal."kehadiran_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 113.385900000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Width = 211.653680000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 272.126160000000000000
          Width = 215.433210000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MATA KULIAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 487.559370000000000000
          Width = 192.756030000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 680.315400000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEHADIRAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 3.779530000000000000
        Top = 279.685220000000000000
        Width = 793.701300000000000000
        object Memo12: TfrxMemoView
          Left = 487.559370000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTEK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 680.315400000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxdbjadwal."kehadiran_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 343.937230000000000000
        Width = 793.701300000000000000
      end
    end
  end
  object qry2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 828
    Top = 78
  end
  object frxdbdetail: TfrxDBDataset
    UserName = 'frxdbdetail'
    CloseDataSource = False
    DataSet = qry2
    Left = 733
    Top = 79
  end
  object frxrpdetail: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.760106516200000000
    ReportOptions.LastChange = 45106.776140196760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 730
    Top = 131
    Datasets = <
      item
        DataSet = frxdbdetail
        DataSetName = 'frxdbdetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 188.976500000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DETAIL DATA JADWAL PRAKTIKUM SEMESTER GANJIL 2019')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 215.433210000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdetail
        DataSetName = 'frxdbdetail'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 60.472480000000000000
          Width = 132.283550000000000000
          Height = 41.574830000000000000
          DataField = 'kelas'
          DataSet = frxdbdetail
          DataSetName = 'frxdbdetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdetail."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 192.756030000000000000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          DataField = 'matkul'
          DataSet = frxdbdetail
          DataSetName = 'frxdbdetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdetail."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 555.590910000000000000
          Width = 124.724490000000000000
          Height = 41.574830000000000000
          DataField = 'tanggal'
          DataSet = frxdbdetail
          DataSetName = 'frxdbdetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdetail."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 680.315400000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          DataField = 'kehadiran_total'
          DataSet = frxdbdetail
          DataSetName = 'frxdbdetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdetail."kehadiran_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 831.496600000000000000
          Top = 37.795300000000000000
          Width = 192.756030000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTEK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 1024.252630000000000000
          Top = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxdbjadwal."kehadiran_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 366.614410000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          DataField = 'jam_mulai'
          DataSet = frxdbdetail
          DataSetName = 'frxdbdetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdetail."jam_mulai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 461.102660000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          DataField = 'jam_akhir'
          DataSet = frxdbdetail
          DataSetName = 'frxdbdetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdetail."jam_akhir"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 113.385900000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Width = 132.283550000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 192.756030000000000000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MATA KULIAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 555.590910000000000000
          Width = 124.724490000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 680.315400000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEHADIRAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 366.614410000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'WAKTU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 366.614410000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MULAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 461.102660000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AKHIR')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 56.692950000000000000
        Top = 279.685220000000000000
        Width = 793.701300000000000000
        object Memo19: TfrxMemoView
          Left = 491.338900000000000000
          Width = 192.756030000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTEK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 680.315400000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          DataSet = frxdbjadwal
          DataSetName = 'frxdbjadwal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxdbdetail."kehadiran_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 396.850650000000000000
        Width = 793.701300000000000000
      end
    end
  end
end
