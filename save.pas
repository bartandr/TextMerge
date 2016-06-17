unit save;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSaveFiles = class(TForm)
    LRadioButton: TRadioButton;
    RRadioButton: TRadioButton;
    SaveButton: TButton;
    SaveDialog1: TSaveDialog;
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaveFiles: TSaveFiles;

implementation

{$R *.dfm}

uses TextMerge;

procedure TSaveFiles.SaveButtonClick(Sender: TObject);
begin
 if LRadioButton.Checked=true then
  begin
   RRadioButton.Visible:=false;
   if SaveDialog1.Execute() then
    TextMerge.Main.LeftField.Lines.SaveToFile(SaveDialog1.FileName);
  end;

 if RRadioButton.Checked=true then
 begin
  LRadioButton.Visible:=false;
  if SaveDialog1.Execute() then
   TextMerge.Main.RightField.Lines.SaveToFile(SaveDialog1.FileName);
 end;
end;

end.
