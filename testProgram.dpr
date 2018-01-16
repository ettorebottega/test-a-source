program testProgram;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.IOUtils,
  testUnit in 'Units\testUnit.pas';

begin
  try
    WriteLn('Hello world!');

    TMyWorker.DoWriteOnFile('testfile.txt', 'Message written.');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
