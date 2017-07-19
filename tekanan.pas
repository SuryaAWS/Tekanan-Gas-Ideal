unit tekanan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    StaticText1: TStaticText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    StaticText2: TStaticText;
    Image1: TImage;
    Button1: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n,T,V,P:real;

const
  R=0.082;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
application.Terminate
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
//konveri dari string ke float
n:=strtofloat(edit1.Text);
T:=strtofloat(edit2.Text);
V:=strtofloat(edit3.Text);
p:=(n*R*T)/V;
//konversi dari float ke string
edit4.Text:=floattostr(p);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
end;

end.
