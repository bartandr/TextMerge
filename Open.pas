unit Open;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TextMerge;

type
  TOpenFiles = class(TForm)
    BrowseLeft: TButton;
    BrowseRight: TButton;
    LeftBrowse: TEdit;
    RightBrowse: TEdit;
    OpenDialog1: TOpenDialog;
    RightLabel: TLabel;
    LeftLabel: TLabel;
    CloseOpen: TButton;
    procedure BrowseLeftClick(Sender: TObject);
    procedure BrowseRightClick(Sender: TObject);
    procedure CloseOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpenFiles: TOpenFiles;

implementation

{$R *.dfm}

procedure TOpenFiles.BrowseLeftClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
   begin
    LeftBrowse.Text:=OpenDialog1.FileName;
    Textmerge.Main.LeftField.Lines.LoadFromFile(OpenDialog1.FileName);
   end;
end;


procedure TOpenFiles.BrowseRightClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
   begin
    RightBrowse.Text:=OpenDialog1.FileName;
    Textmerge.Main.RightField.Lines.LoadFromFile(OpenDialog1.FileName);
   end;

end;

procedure TOpenFiles.CloseOpenClick(Sender: TObject);
begin
 OpenFiles.Visible:=false;
end;

end.
