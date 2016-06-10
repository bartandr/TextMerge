unit TextMerge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TMain = class(TForm)
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    Help1: TMenuItem;
    AbotTextMerge1: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Open1: TMenuItem;
    Save1: TMenuItem;
    LeftField: TRichEdit;
    RightField: TRichEdit;
    procedure FormResize(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure LeftFieldChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}
uses Open;

procedure TMain.FormResize(Sender: TObject);
begin
 LeftField.ClientWidth:=Main.ClientWidth div 2;
 RightField.ClientWidth:=Main.ClientWidth div 2;
 RightField.Left:=Main.ClientWidth div 2;
end;

procedure TMain.LeftFieldChange(Sender: TObject);
var
  i: Integer;
begin
 //for i := 0 to length(LeftField.Lines.Strings) do


end;

procedure TMain.Open1Click(Sender: TObject);
begin
 OpenFiles.Visible:=true;
end;

end.
