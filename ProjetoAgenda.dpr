program ProjetoAgenda;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
