unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses FMX.Bass; {-framework AudioToolbox -framework CFNetwork}

procedure TForm1.Button1Click(Sender: TObject);
var BassVersion: DWord;
begin
  //Label1.Text:= BASS_GetVersion.ToHexString;
  BassVersion:= BASS_GetVersion;
  Label1.Text:= (BassVersion shr 24).ToString
    + '.' + ((BassVersion shr 16) and $FF).ToString
    + '.' + ((BassVersion shr 8) and $FF).ToString
    + '.' + (BassVersion and $FF).ToString;
end;

end.
