unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure TodosOsCalculos;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TodosOsCalculos;
var
  xNum1, xNum2: Double;
  xResultado: Array[1..4] of Double;
begin
  xNum1:= StrToFloat(Edit1.Text);
  xNum2:= StrToFloat(Edit2.Text);
  xResultado[1]:= xNum1 + xNum2;
  xResultado[2]:= xNum1 - xNum2;
  xResultado[3]:= xNum1 * xNum2;
  xResultado[4]:= xNum1 / xNum2;
  Label3.Caption:= 'Soma: ' + FloatToStr(xResultado[1]);
  Label4.Caption:= 'Subtra��o: ' + FloatToStr(xResultado[2]);
  Label5.Caption:= 'Multiplica��o: ' + FloatToStr(xResultado[3]);
  Label6.Caption:= 'Divis�o: ' + FloatToStr(xResultado[4]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TodosOsCalculos;
end;

end.