unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Extender;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Extender;
var
  xNum: Integer;
  //xExtenso: array[1..5] of String;
begin

  {xExtenso[1]:= 'Um';
  xExtenso[2]:= 'Dois';
  xExtenso[3]:= 'Tr�s';
  xExtenso[4]:= 'Quatro';
  xExtenso[5]:= 'Cinco';

  xNum := StrToInt(Edit1.Text);

  if (xNum >= 1) and (xNum <= 5)then
    label2.Caption:= xExtenso[xNum]

  else
    begin
      label2.Caption:= '';
      showMessage('Informe um numero de 1 a 5');
    end; }
      if TryStrToInt((Edit1.Text), xNum) then
        begin
          case xNum of
            1: label2.Caption := 'Um';
            2: label2.Caption := 'Dois';
            3: label2.Caption := 'Tr�s';
            4: label2.Caption := 'Quatro';
            5: label2.Caption := 'Cinco';
            else showMessage('Informe um valor de 1 a 5');
          end;
        end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    Extender;
end;

end.
