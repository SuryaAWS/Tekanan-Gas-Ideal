program Project1;

uses
  Forms,
  tekanan in 'tekanan.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
