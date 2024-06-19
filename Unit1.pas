unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdModBusClient, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    IdModBusClient1: TIdModBusClient;
    btRead: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edIP: TEdit;
    edRegister: TEdit;
    edLength: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btClear: TButton;
    Label7: TLabel;
    edAddress: TEdit;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    procedure btReadClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btClearClick(Sender: TObject);
begin
  Memo1.Text := '';
end;

procedure TForm1.btReadClick(Sender: TObject);
var
  Data: array[0..4096] of Word;
  iAmount: Integer;
  i: Integer;
  start: Integer;
  sLine: String;
begin
  btRead.Enabled := False;

  iAmount := StrToInt(edLength.Text);
  start := StrToInt(edRegister.Text);
  if (iAmount > 0) then
  begin
    IdModBusClient1.Host := edIP.Text;
    IdModBusClient1.UnitID := StrToInt(edAddress.Text);
    if IdModBusClient1.ReadHoldingRegisters(start, iAmount, Data) then
    begin
      sLine := 'Register value(s) read:'#13#10;
      for i := 0 to (iAmount - 1) do
        sLine := sLine +
                 '     ' +
                 IntToStr(start + i) +
                 ': (0x' +
                 IntToHex(Data[i], 4) +
                 ') '  +
                 IntToStr(Data[i]) +
                 #13#10;
      Memo1.Text := Memo1.Text + sLine;
    end
    else
      ShowMessage('PLC read operation failed!');

    IdModBusClient1.Disconnect;

    btRead.Enabled := True;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Text := '';
end;

end.
