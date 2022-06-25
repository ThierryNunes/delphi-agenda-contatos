unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbNome: TDBEdit;
    dbCelular: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    dbObs: TDBMemo;
    Label4: TLabel;
    dbData: TDBText;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    txtBusca: TEdit;
    Label6: TLabel;
    procedure txtBuscaChange(Sender: TObject);
    procedure dbCelularExit(Sender: TObject);
    function funcNumeros(numero: string): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UDM;

procedure TFormPrincipal.dbCelularExit(Sender: TObject);
var nCelular: string;
begin
  nCelular := funcNumeros(dbCelular.Text);

  if Length(nCelular) = 11 then //celular
  begin
    dbCelular.Field.EditMask := ('(99) 9 9999-9999;0;_')
  end else
  if Length(nCelular) = 10 then //telefone
  begin
    dbCelular.Field.EditMask := ('(99) 9999-9999;0;_');
  end else
  if Length(nCelular) <> 0 then //invalido
  begin
    ShowMessage('Número de Celular Inválido!!!');
    dbCelular.SetFocus;
    Abort;
  end;

end;

function TFormPrincipal.funcNumeros(numero: string): string;
var i: integer;
    limpos: string;
begin
  limpos := '';

  for i := 1 to Length(numero) do
  begin
    if Pos(Copy(numero, i, 1), '0,1,2,3,4,5,6,7,8,9') <> 0 then
      limpos := limpos + Copy(numero, i, 1);
  end;

  Result := limpos;
end;

procedure TFormPrincipal.txtBuscaChange(Sender: TObject);
begin
  DM.tbContatos.Locate('nome', txtBusca.Text, [loPartialKey])
end;

end.
