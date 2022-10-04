unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Converter;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Converter;
var
  xReal, xDolar, xCotacao: Double;
begin
  xDolar:= StrToFloat(Edit1.Text);
  xCotacao:= StrToFloat(Edit2.Text);
  xReal:= xDolar * xCotacao;;

  label3.Caption := 'R$: ' + FormatFloat('0.00', xReal);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Converter;
end;

end.
