unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
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

function Verificar(const pIdade: Integer): Boolean;
begin
  if pIdade >= 18 then
    result:= true
  else
    result:= false;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  I, xIdade: Integer;
begin
  for I := 1 to 5 do
    begin
      xIdade := StrToInt(InputBox('Informar','Digite a idade: ', '0'));

      if Verificar(xIdade) then
        showMessage('� de maior')
      else
        showMessage('� de menor');
    end;
end;

end.