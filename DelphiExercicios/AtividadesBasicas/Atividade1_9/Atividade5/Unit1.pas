unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function MediaAluno(const pNota1, pNota2, pNota3: Double): Double;
var
  xMedia: double;
begin
  xMedia:= (pNota1 + pNota2 + pNota3) / 3;
  Result := xMedia;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xNome: String;
  xNota1, xNota2, xNota3, xMedia: Double;
begin
  xNome:= Edit1.Text;
  xNota1:= StrToFloat(Edit2.Text);
  xNota2:= StrToFloat(Edit3.Text);
  xNota3:= StrToFloat(Edit4.Text);

  xMedia := MediaAluno(xNota1, xNota2, xNota3);

   label5.Caption:= 'Aluno: ' + xNome;
   label6.Caption:= 'M�dia: ' + FormatFloat('0.#', xMedia)
end;

end.
