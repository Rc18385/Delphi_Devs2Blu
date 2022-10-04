unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Aprovar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

procedure TForm1.Aprovar;
var xNome: String;
  xNota1, xNota2, xNota3, xMedia: Double;
begin

  if not TryStrToFloat(edit2.Text, xNota1) then
    raise Exception.Create('NOTA1 ERROR, Informe um valor valido');

  if not TryStrToFloat(edit3.Text, xNota2) then
    raise Exception.Create('NOTA2 ERROR, Informe um valor valido');

  if not TryStrToFloat(edit4.Text, xNota3) then
    raise Exception.Create('NOTA3 ERROR, Informe um valor valido');

  xNome:= Edit1.Text;
  xMedia := (xNota1 + xNota2 + xNota3) / 3;

  if (xMedia >= 7) then
    label5.Caption:= 'Aluno: ' + xNome + ' Foi Aprovado, M�dia: ' + FormatFloat('0.00' , xMedia)
  else if (xMedia > 5.09) and (xMedia <= 6.9) then
    label5.Caption:= 'Aluno: ' + xNome + ' Est� em Recupera��o, M�dia: ' + FormatFloat('0.00' , xMedia)
  else
    label5.Caption:= 'Aluno: ' + ' Foi Reprovado, M�dia: ' + FormatFloat('0.00' , xMedia)
end;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Aprovar;
end;

end.
