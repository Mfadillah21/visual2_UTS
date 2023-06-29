unit Mandiri3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    strngrd1: TStringGrid;
    Chart1: TChart;
    psrsSeries1: TPieSeries;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 strngrd1.RowCount:=1;
 strngrd1.ColCount:=4;
 strngrd1.Cells[0,0]:='NO';
 strngrd1.Cells[1,0]:='NIM';
 strngrd1.Cells[2,0]:='NAMA MAHASISWA';
 strngrd1.Cells[3,0]:='TAHUN ANGKATAN';

 strngrd1.ColWidths[0]:=20;
 strngrd1.ColWidths[1]:=70;
 strngrd1.ColWidths[2]:=120;
 strngrd1.ColWidths[3]:=110;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
strngrd1.RowCount := strngrd1.RowCount+1;
strngrd1.Cells[0,strngrd1.RowCount -1] := IntToStr(strngrd1.RowCount-1);
strngrd1.Cells[1,strngrd1.RowCount -1] :=  Edit2.Text;
strngrd1.Cells[2,strngrd1.RowCount -1] :=  Edit1.Text;
strngrd1.Cells[3,strngrd1.RowCount -1] :=  ComboBox2.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
 var i:Integer;

begin
  Chart1.Series[0].Clear;
 for i:=1 to strngrd1.RowCount-1 do
  begin
    Chart1.Series[0].Add(StrToFloat(strngrd1.Cells[1,i]), strngrd1.Cells[2,i]);
  end;
end;

end.
