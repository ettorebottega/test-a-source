unit testUnit;

interface

uses   System.SysUtils, System.IOUtils, System.Classes;

type

  TMyWorker = class
  private
    FDescription: string;
    procedure SetDescription(const Value: string);
  public
    class procedure DoWriteOnFile(const AFileName, AText: string);
    property Description: string read FDescription write SetDescription;
  end;

implementation

{ TMyWorker }

class procedure TMyWorker.DoWriteOnFile(const AFileName, AText: string);
begin
  TFile.AppendAllText(AFileName, AText);
end;

procedure TMyWorker.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

end.
