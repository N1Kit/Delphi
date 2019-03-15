unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Button2: TButton;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  fName: String;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm5.Button1Click(Sender: TObject);
begin
  if Form5.OpenDialog1.Execute then Form5.Edit1.Text:=Form5.OpenDialog1.FileName;
  fName:=ExtractFileName(Form5.Edit1.Text);
  pName:=ExtractFileDir(Form5.Edit1.Text);
end;

procedure TForm5.Button2Click(Sender: TObject);

begin
  if Form5.OpenDialog1.Execute then Form5.Edit1.Text:=Form5.OpenDialog1.FileName;
    fName:=ExtractFileName(Form5.Edit1.Text);
    pName:=ExtractFileDir(Form5.Edit1.Text);
    Form1.ADOQuery1.Active:=False;
    Form1.ADOConnection1.Close;              //Data Source=dBASE Files;
    Form1.ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Data Source=dBASE Files;Initial Catalog='+pName+';Persist Security Info=False;';
    //Form1.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form5.Edit1.Text+';Persist Security Info=False;';
    Form1.ADOConnection1.Open();
    Form1.ADOQuery1.SQL.Text := 'SELECT * FROM ' + fName;
    Form1.ADOQuery1.Active:=True;
    Form5.Close;
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
  //Form5.Edit1.Clear();
end;

end.
