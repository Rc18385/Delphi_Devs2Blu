unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCarros = record
    xId: Integer;
    xPreco, xPrecoDesconto: double;
    xVendido: Boolean;
  end;
  TCombustivel = (Alcool, Gasolina, Diesel);
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label5: TLabel;
    Linha: TMemo;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Situa��o: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Linha2: TMemo;
    Linha3: TMemo;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarTela;
    procedure Comprar;
  public
    { Public declarations }
  end;



var
  Form1: TForm1;
  FListaCarros: array of TCarros;
  ID: Integer=1;

implementation

{$R *.dfm}


procedure Cadastrar(const pCarros: TCarros);
begin
    SetLength(FListaCarros, Length(FListaCarros)+1);
    FListaCarros[Length(FListaCarros)-1]:= pCarros;
end;

procedure TForm1.Comprar;
var
  xID: Integer;
  I: Integer;
begin

  if Edit2.Text = '' then
    showMessage('Informe um ID')
  else
  begin
      xID:= StrToInt(Edit2.Text);

      for I := 0 to Length(FListaCarros)-1 do
      begin
        if xID = FListaCarros[I].xId then
          FListaCarros[I].xVendido := True;
          AtualizarTela;
      end;
  end;
end;

procedure TForm1.AtualizarTela;
var
  xCarros: TCarros;
  I: Integer;
  xValorVendas, xValorDesconto: Double;
begin

  memo2.Lines.Clear;
  memo3.Lines.Clear;
  memo4.Lines.Clear;
  memo5.Lines.Clear;

  xValorVendas:=0;
  xValorDesconto:=0;

  for I := 0 to Length(FListaCarros)-1 do
  begin
    xCarros := FListaCarros[I];

    Memo2.Lines.Add(xCarros.xId.ToString);
    Memo3.Lines.Add('R$:' + xCarros.xPreco.ToString);
    Memo4.Lines.Add('R$:' + xCarros.xPrecoDesconto.ToString);

    if not xCarros.xVendido then
      begin
        Memo5.Lines.Add('N�o Vendido');
      end
    else
      begin
        Memo5.Lines.Add('Vendido');
        xValorVendas:= xValorVendas + xCarros.xPrecoDesconto;
        label10.Caption:= 'R$:' + FormatFloat('0.00', xValorVendas);
      end;

      xValorDesconto:= xValorDesconto + (xCarros.xPreco - xCarros.xPrecoDesconto);
      label9.Caption :='R$:' + FormatFloat('0.00', xValorDesconto);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xCarros: TCarros;
  I: Integer;
begin

  if Edit1.Text = '' then
    showMessage('Digite um valor valido')
  else
  begin

    if not TryStrToFloat((Edit1.Text),xCarros.xPreco) then
      raise Exception.Create('Digite um valor valido');

      xCarros.xVendido:= false;
      xCarros.xId:= ID;

      case TCombustivel(RadioGroup1.ItemIndex) of

        Alcool:
          begin
           xCarros.xPrecoDesconto:= xCarros.xPreco * 0.75;
           Cadastrar(xCarros);
           AtualizarTela;
           ID:= ID+1;
          end;

        Gasolina:
          begin
           xCarros.xPrecoDesconto:= xCarros.xPreco * 0.79;
           Cadastrar(xCarros);
           AtualizarTela;
           ID:= ID+1;
          end;

        Diesel:
          begin
            xCarros.xPrecoDesconto:= xCarros.xPreco * 0.86;
            Cadastrar(xCarros);
            AtualizarTela;
            ID:= ID+1;
          end
        else
          showMessage('Por favor escolha um tipo de combustivel');
    end;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Comprar;
end;

end.
