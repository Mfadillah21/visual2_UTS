unit Mandiri2;

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
    Ekehadiran: TEdit;
    Etugas: TEdit;
    Euts: TEdit;
    Ekehadiran_b: TEdit;
    Etugas_b: TEdit;
    Euts_b: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Etotal: TEdit;
    Egrade: TEdit;
    Bhitung: TButton;
    Bhapus: TButton;
    Bkeluar: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Eharian: TEdit;
    Euas: TEdit;
    Eharian_b: TEdit;
    Euas_b: TEdit;
    Label8: TLabel;
    Eket: TEdit;
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
    nil1, nil2, nil3,nil4,nil5, hasil : real ;
    b1, b2, b3, b4, b5 : real;
    grade,ket :string;
begin
  //berfungsi untuk mengambil data nilai
        nil1 := strtofloat(Ekehadiran.Text);
        nil2 := strtofloat(Etugas.Text);
        nil3 := strtofloat(Euts.Text);
        nil4 := strtofloat(Eharian.Text);
        nil5 := strtofloat(Euas.Text);
  //mengambil pesan data bobot
        b1 := strtofloat(Ekehadiran_b.Text)/100;
        b2 := strtofloat(Etugas_b.Text)/100;
        b3 := strtofloat(Euts_b.Text)/100;
        b4 := strtofloat(Eharian_b.Text)/100;
        b5 := strtofloat(Euas_b.Text)/100;
  //menghitung nilai akhir
        hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;
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
    //Menentukan keterangan hasil
      if ((grade = 'A')or(grade='B')or(grade='C')) then
        ket:='LULUS'
      else
        ket:='TIDAK LULUS';
  //Hasil dari proses....
        Etotal.Text := floattostr(hasil);
        Egrade.Text := grade;
        Eket.Text := ket;
end;

procedure TForm1.BhapusClick(Sender: TObject);
begin
    Ekehadiran.Text := '0';
    Etugas.Text := '0';
    Euts.Text := '0';
    Eharian.Text := '0';
    Euas.Text := '0';
    Etotal.Text := '';
    Egrade.Text := '';
end;

procedure TForm1.BkeluarClick(Sender: TObject);
begin
 Application.Terminate;
end;

end.
