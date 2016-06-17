unit TextMerge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls,RichEdit, Vcl.Buttons, Math;

type
  TMain = class(TForm)
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Open1: TMenuItem;
    Save1: TMenuItem;
    LeftField: TRichEdit;
    RightField: TRichEdit;
    CheckButton: TButton;
    UnCheckButton: TButton;
    procedure FormResize(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure CheckButtonClick(Sender: TObject);
    procedure UnCheckButtonClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}
uses Open, save;

procedure TMain.Button1Click(Sender: TObject);//cтроку влево
var
 posX,posY:integer;
 str:string;
begin
 posY:=RightField.CaretPos.Y;
 posX:=RightField.CaretPos.X;
 str:=RightField.SelText;
 LeftField.SetFocus;
 LeftField.SelStart:=posX;
 LeftField.SelLength:=length(RightField.SelText);
 LeftField.Lines.Strings[posy]:=LeftField.Lines.Strings[posy]+' '+str;
end;

procedure TMain.Button2Click(Sender: TObject);
var
 posX,posY:integer;
 str:string;
begin
 posY:=LeftField.CaretPos.Y;
 posX:=LeftField.CaretPos.X;
 str:=LeftField.SelText;
 RightField.SetFocus;
 RightField.SelStart:=posX;
 RightField.SelLength:=length(LeftField.SelText);
 RightField.Lines.Strings[posy]:=RightField.Lines.Strings[posy]+' '+str;
end;

procedure TMain.Button3Click(Sender: TObject);
begin
 LeftField.Text:=RightField.Text;
end;

procedure TMain.Button4Click(Sender: TObject);
begin
 RightField.Text:=LeftField.Text;
end;

procedure TMain.CheckButtonClick(Sender: TObject);
var
  i: Integer;
  lFmt:TcharFormat2;
begin
 FillChar(lFmt.cbSize,SizeOf(TcharFormat2), 0);
 lFmt.cbSize:=SizeOf(TCharFormat2);
 for i := 0 to Max(length(LeftField.Text),length(RightField.Text)) do
   if LeftField.Text[i]<>RightField.Text[i] then
    begin
     RightField.SelStart:=i-1;
     RightField.SelLength:=1;
     RightField.SelAttributes.Style:=RightField.SelAttributes.Style+[fsUnderline];

     LeftField.SelStart:=i-1;
     LeftField.SelLength:=1;
     lFmt.crBackColor := clred;
     lFmt.dwMask := CFM_BACKCOLOR;
     SendMessage(LeftField.Handle, EM_SETCHARFORMAT, SCF_SELECTION, Integer(@lFmt));
    end else
    begin
     RightField.SelStart:=i-1;
     RightField.SelLength:=1;
     RightField.SelAttributes.Style:=RightField.SelAttributes.Style-[fsUnderline];

     LeftField.SelStart:=i-1;
     LeftField.SelLength:=1;
     lFmt.crBackColor:= clWhite;
     lFmt.dwMask:= CFM_BACKCOLOR;
     SendMessage(LeftField.Handle, EM_SETCHARFORMAT, SCF_SELECTION, Integer(@lFmt));
    end;
end;

procedure TMain.FormResize(Sender: TObject);
begin
 LeftField.ClientWidth:=Main.ClientWidth div 2;
 RightField.ClientWidth:=Main.ClientWidth div 2;
 RightField.Left:=Main.ClientWidth div 2;
 LeftField.Height:=Main.ClientHeight;
 RightField.Height:=Main.ClientHeight;
end;


procedure TMain.Open1Click(Sender: TObject);
begin
 OpenFiles.Visible:=true;
end;

procedure TMain.Save1Click(Sender: TObject);
begin
 SaveFiles.Visible:=true;
end;

procedure TMain.UnCheckButtonClick(Sender: TObject);
var
 i:integer;
 lFmt:TCharFormat2;
begin
 FillChar(lFmt.cbSize,SizeOf(TcharFormat2), 0);
 lFmt.cbSize:=SizeOf(TCharFormat2);
  for i := 0 to Max(length(LeftField.Text),length(RightField.Text)) do
   begin
     RightField.SelStart:=i-1;
     RightField.SelLength:=1;
     RightField.SelAttributes.Style:=RightField.SelAttributes.Style-[fsUnderline];

     LeftField.SelStart:=i-1;
     LeftField.SelLength:=1;
     lFmt.crBackColor:= clWhite;
     lFmt.dwMask:= CFM_BACKCOLOR;
     SendMessage(LeftField.Handle, EM_SETCHARFORMAT, SCF_SELECTION, Integer(@lFmt));
   end;
end;
end.
