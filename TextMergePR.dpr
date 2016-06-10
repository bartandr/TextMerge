program TextMergePR;

uses
  Vcl.Forms,
  TextMerge in 'TextMerge.pas' {Main},
  Open in 'Open.pas' {OpenFiles};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TOpenFiles, OpenFiles);
  Application.Run;
end.
