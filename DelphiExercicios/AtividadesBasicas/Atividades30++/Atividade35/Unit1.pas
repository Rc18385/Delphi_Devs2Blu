unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCliente = (Residencia, Comercio, Industria);
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Calcular;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Calcular;
var
  xValor, xConta: double;
begin

  if Edit1.Text = '' then
    showMessage('Por favor digite um valor')
  else if Edit1.Text = '0' then
    showMessage('Por favor digite um valor acima de 0')
  else
  begin
    if not TryStrToFloat(Edit1.Text, xValor) then
    raise Exception.Create('Valor Invalido');

    case TCliente(RadioGroup1.ItemIndex) of
      Residencia:
      begin
        xConta := xValor * 0.60;
        showMessage('Sua Conta esse m�s deu R$:' + FormatFloat('0.00',xConta));
      end;
      Comercio:
      begin
        xConta:= xValor * 0.48;
        showMessage('Sua Conta esse m�s deu R$:' + FormatFloat('0.00',xConta));
      end;
      Industria:
      begin
        xConta:= xValor * 1.29;
        showMessage('Sua Conta esse m�s deu R$:' + FormatFloat('0.00',xConta));
      end
      else
        showMessage('Informe o tipo de estrutura');
    end;

  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Calcular;
end;

end.
