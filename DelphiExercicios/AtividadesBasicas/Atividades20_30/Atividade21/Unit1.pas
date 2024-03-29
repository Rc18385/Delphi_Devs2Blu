unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoas = record
    Nome: string;
    Sexo: String;
    Idade: Integer;
    Saude: Boolean;
  end;
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure VerificarPessoa;
  public
    { Public declarations }
end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.VerificarPessoa;
var
  xPessoa: TPessoas;
  xSaude, xContinuar: String;
begin

  repeat
   xPessoa.Nome:= Inputbox('Infomar','Digite o Nome:','...');
   xPessoa.Sexo:= AnsiUppercase(Inputbox('Informar','Digite o Sexo (F/H)','...'));
   if not TryStrToInt(InputBox('Informar','Digite a Idade','...'), xPessoa.Idade) then
    raise Exception.Create('Informe Uma Idade valdia');
   xSaude:= AnsiUpperCase(Inputbox('Informar','Algum problema de saude ? (S/N)','N'));

   if (xSaude = 'S') then
    xPessoa.Saude := True;
   
   if (xPessoa.Sexo = 'H') and (xPessoa.Idade >= 18) and not (xPessoa.Saude) then
    Memo1.Lines.Add(xPessoa.Nome + ' / � Obrigatorio')
   else if  (xPessoa.Sexo = 'H') and (xPessoa.Idade >= 18) and (xPessoa.Saude) then
    Memo1.Lines.Add(xPessoa.Nome + ' / N�o Obrigatorio por problemas de Saude')
   else if (xPessoa.Sexo = 'F')  and (xPessoa.Idade >= 18) then
    Memo1.Lines.Add(xPessoa.Nome + ' / N�o � Obrigatorio')
   else
    Memo1.Lines.Add(xPessoa.Nome + ' / N�o pode se alistar por ser de menor');

    xContinuar:= AnsiUpperCase(InputBox('Informar','Deseja Continuar ? (S/N)','S'));

  until (xContinuar <> 'S');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  VerificarPessoa;
end;

end.
