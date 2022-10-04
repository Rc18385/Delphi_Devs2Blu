unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularAumento;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalcularAumento;
var
  xValor, xPorcentagem: double;
begin
  xValor:= StrToFloat(Edit1.Text);
  xPorcentagem:= StrToFloat(Edit2.Text);
  xValor:= xValor + ((xValor * xPorcentagem) / 100);

  label3.Caption:= 'O Produto custar�: R$' + FormatFloat('0.00',xValor);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  CalcularAumento;
end;

end.
