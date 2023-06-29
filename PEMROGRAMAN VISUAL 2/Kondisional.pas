unit Kondisional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnlcontoh: TPanel;
    pnlnilai: TPanel;
    pnlbobot: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    e_nil1: TEdit;
    e_nil2: TEdit;
    e_niluts: TEdit;
    e_nil1b: TEdit;
    e_nil2b: TEdit;
    e_nil3b: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    e_total: TEdit;
    e_grade: TEdit;
    Bhitung: TButton;
    Bhapus: TButton;
    Bkeluar: TButton;
    Label6: TLabel;
    Label7: TLabel;
    e_nilharian: TEdit;
    e_uts: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure BhitungClick(Sender: TObject);
    procedure BhapusClick(Sender: TObject);
    procedure BkeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BhitungClick(Sender: TObject);
var
   
begin
  //berfungsi untuk mengambil data nilai
        nil1 := StrToFloat(e_n.Text);
        nil2 := StrToFloat(e_ni.Text);
        nil3 := StrToFloat(e_n.Text);
  //mengambil pesan data bobot
        b1 := StrToFloat(e_ni.Text)/100;
        b2 := StrToFloat(e_ni.Text)/100;
        b3 := StrToFloat(e_ni.Text)/100;
  //menghitung nilai akhir
        hasil := nil1*b1 + nil2*b2 + nil3*b3;
  //menentukan grade nilai
        if (hasil >= 80) then
        grade:='A'
        else
        if (hasil >= 70) then
        grade :='B'
        else
        if (hasil >= 60) then
        grade := 'C'
        else
        if (hasil >= 50) then
        grade :='D'
        else
        grade :='E';
  //Hasil dari proses....
        e_total.Text := floattostr(hasil);
        e_grade.Text := grade;
end;

procedure TForm1.BhapusClick(Sender: TObject);
begin
    e_nil1.Text := '0';
    e_nil2.Text := '0';
    e_nil3.Text := '0';
    e_total.Text := '';
    e_grade.Text := '';
end;

procedure TForm1.BkeluarClick(Sender: TObject);
begin
 Application.Terminate;
end;

end.
