unit Ujadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    GB1: TGroupBox;
    dg1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    dtp1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bersih;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  upd:string;

implementation
uses Unit1;

{$R *.dfm}

procedure TForm2.bersih;
begin
Edit1.Text:='00:00';
Edit2.Text:='00:00';
end;

procedure TForm2.Button1Click(Sender: TObject);
 var a:Integer;
begin
  a:=Form1.qry1.RecordCount+1;
with Form1.qry1 do
begin
  SQL.Clear;
  SQL.Add('insert into jadwal_table values ("'+inttostr(a)+'","'+Edit1.text+'","'+Edit2.text+'","'+ComboBox1.text+'","'+formatdatetime('yyyy-mm-dd',dtp1.date)+'","'+Edit3.text+'","'+Edit4.text+'","'+Edit5.text+'","'+Edit6.text+'")');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from jadwal_table');
  Open;
  ShowMessage('DATA BERHASIL DI SIMPAN');
end;


end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 if (Edit1.Text='')or (Edit1.Text='00:00:00')or (Edit2.Text='')or (Edit2.Text='00:00:00') then
begin
  ShowMessage('DATA BELUM DIISI DENGAN BENAR');
end else
if (ComboBox1.Text='')or (ComboBox1.Text='---PILIH HARI---')then
begin
  ShowMessage('HARI BELUM DIISI DENGAN BENAR');
end else
if (Edit3.Text='')or (Edit3.Text='-')or (Edit4.Text='')or (Edit4.Text='-')then
begin
  ShowMessage('Inputan Ruangan dan Matakuliah masih belum sesuai');
end else
if (Edit5.Text='')or (Edit5.Text='-')or (Edit6.Text='')or (Edit6.Text='0')then
begin
  ShowMessage('Inputan Kelas atau Total Hadir Masih Belum sesuai');
end else
if (Edit1.Text= Form1.qry1.Fields[1].AsString) and (ComboBox1.Text= Form1.qry1.Fields[3].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan');
end else
begin
  //Kode Update
  with Form1.qry1 do
  begin
    SQL.Clear;
    SQL.Add('update jadwal_table set jam_mulai="'+Edit1.Text+'",jam_akhir="'+Edit2.Text+'" where no="'+upd+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from jadwal_table');
    Open;
    ShowMessage('DATA BERHASIL DI UPDATE');
    bersih;
  end;
end
end;

end.
