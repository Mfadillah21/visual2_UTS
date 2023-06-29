unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids,
  DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DS1: TDataSource;
    qry1: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    frxdbjadwal: TfrxDBDataset;
    frxrpjadwal: TfrxReport;
    dg1: TDBGrid;
    qry2: TADOQuery;
    frxdbdetail: TfrxDBDataset;
    frxrpdetail: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure frxrpjadwalClickObject(View: TfrxView;
      Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Ujadwal;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var i:Integer;
begin
 qry1.SQL.Clear;
 qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
 qry1.Open;

 cht1.Series[0].Clear;
 for i:=1 to qry1.RecordCount do
 begin
 cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.fieldbyname('nama_kelas').AsString);
 qry1.Next;
 end;
 dg1.Columns[2].Width:=90;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 qry1.SQL.Clear;
 qry1.SQL.Add('select * from jadwal_table');
 qry1.Open;

 dg1.columns[0].Width:=30;
 dg1.Columns[3].Width:=90;
 dg1.Columns[5].Width:=50;
 dg1.Columns[6].Width:=110;
 dg1.Columns[7].Width:=90;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
 dg1.columns[0].Width:=30;
 dg1.Columns[3].Width:=90;
 dg1.Columns[5].Width:=50;
 dg1.Columns[6].Width:=110;
 dg1.Columns[7].Width:=90;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
frxrpjadwal.ShowReport();
end;

procedure TForm1.frxrpjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
  begin
    qry2.SQL.Clear;
    qry2.SQL.Add('select * from jadwal_table where kelas="'+view.TagStr+'"');
    qry2.Open;

    frxrpdetail.ShowReport();
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 form2.ShowModal;
end;

end.
