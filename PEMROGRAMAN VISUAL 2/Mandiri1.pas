unit Mandiri1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Einput1: TEdit;
    Einput2: TEdit;
    Bsemua: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Etambah: TEdit;
    Ekurang: TEdit;
    Ekali: TEdit;
    Ebagi: TEdit;
    Btambah: TButton;
    Bkurang: TButton;
    Bkali: TButton;
    Bbagi: TButton;
    procedure BtambahClick(Sender: TObject);
    procedure BkurangClick(Sender: TObject);
    procedure BkaliClick(Sender: TObject);
    procedure BbagiClick(Sender: TObject);
    procedure BsemuaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtambahClick(Sender: TObject);
var input1, input2, tambah:Real;

begin
  input1:=StrToFloat(Einput1.Text);
  input2:=StrToFloat(Einput2.Text);
  tambah:=input1+input2;
  Etambah.Text:=FloatToStr(tambah);
end;

procedure TForm1.BkurangClick(Sender: TObject);
var input1, input2, kurang:Real;

begin
  input1:=StrToFloat(Einput1.Text);
  input2:=StrToFloat(Einput2.Text);
  kurang:=input1-input2;
  Ekurang.Text:=FloatToStr(kurang);
end;

procedure TForm1.BkaliClick(Sender: TObject);
var input1, input2, kali:Real;

begin
  input1:=StrToFloat(Einput1.Text);
  input2:=StrToFloat(Einput2.Text);
  kali:=input1*input2;
  Ekali.Text:=FloatToStr(kali);
end;

procedure TForm1.BbagiClick(Sender: TObject);
var input1, input2, bagi:Real;

begin
  input1:=StrToFloat(Einput1.Text);
  input2:=StrToFloat(Einput2.Text);
  bagi:=input1/input2;
  Ebagi.Text:=FloatToStr(bagi);
end;

procedure TForm1.BsemuaClick(Sender: TObject);
var input1, input2, tambah, kurang, kali, bagi :Real;

begin
  input1:=StrToFloat(Einput1.Text);
  input2:=StrToFloat(Einput2.Text);
  tambah:=input1+input2;
  kurang:=input1-input2;
  kali:=input1*input2;
  bagi:=input1/input2;

  Etambah.Text:=FloatToStr(tambah);
  Ekurang.Text:=FloatToStr(kurang);
  Ekali.Text:=FloatToStr(kali);
  Ebagi.Text:=FloatToStr(bagi);
end;

end.
