program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  var xNum: Double;
  try
    write('Digite um valor: ');
    readln(xNum);

    if (xNum >= 100) and (xNum <= 200) then
      write('O numero digitado fica entre 100 e 200')
    else
      write('O Numero digitado n�o fica entre 100 e 200');

      readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
