unit grafik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    strngrd1: TStringGrid;
    Chart1: TChart;
    psrsSeries1: TPieSeries;
    BitBtn1: TBitBtn;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
   strngrd1.Cells[0,0]:='JENIS PENYAKIT';
   strngrd1.Cells[0,1]:='COVID 19';
   strngrd1.Cells[0,2]:='FLU BIASA';
   strngrd1.Cells[0,3]:='DEMAM';
   strngrd1.Cells[0,4]:='RINDU';
   strngrd1.Cells[1,0]:='JUMLAH';
   Chart1.Title.Text.add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
 var i: integer;
begin
for i:=1 to strngrd1.rowcount-1 do
chart1.Series[0].Add(StrToFloat(strngrd1.cells[1,i]),strngrd1.cells[0,i]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
strngrd1.Cells[1,ComboBox1.ItemIndex +1]:=Edit1.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    ComboBox1.Text := '';
    Edit1.Text := '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
