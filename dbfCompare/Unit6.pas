unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    OpenDialog1: TOpenDialog;
    Button3: TButton;
    Button4: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  fName1, fName2, pName: String;
  var c:boolean=false;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
begin
  Form6.Label1.Visible:=true;
  if Form6.OpenDialog1.Execute then Form6.Label1.Caption:=Form6.OpenDialog1.FileName;
  if Form6.Label1.Caption=Form6.Label3.Caption then
  begin
     Form6.Label2.Visible := true;
     Form6.Label2.Caption:='Вы выбрали один и тот же файл';
     Form6.Image1.Visible:=true;
  end
    else
  begin
     Form6.Label2.Visible := false;
  end;

  if (Form6.Label1.Caption<>'label1') and (Form6.Label3.Caption <> 'label3') and (Form6.Label1.Caption <> Form6.Label3.Caption)  then
    begin
        Form6.Button3.Enabled:=true;
    end
  else
    Form6.Button3.Enabled:=false;
  fName1:=ExtractFileName(Form6.Label1.Caption);
  pName:=ExtractFileDir(Form6.Label1.Caption);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Form6.Label3.Visible:=true;
  if Form6.OpenDialog1.Execute then Form6.Label3.Caption:=Form6.OpenDialog1.FileName;
  if Form6.Label1.Caption=Form6.Label3.Caption then
    begin
     Form6.Label2.Visible := true;
     //Form6.Label2.Alignment := taCenter;
     Form6.Label2.Caption:='Вы выбрали один и тот же файл';
     Form6.Image1.Visible:=true;
  end
  else
  begin
     Form6.Label2.Visible := false;
  end;

  if (Form6.Label3.Caption<>'label3') and (Form6.Label1.Caption <> 'label1') and (Form6.Label1.Caption <> Form6.Label3.Caption) then
    begin
        Form6.Button3.Enabled:=true;
    end
  else
    Form6.Button3.Enabled:=false;
  fName2:=ExtractFileName(Form6.Label3.Caption);
  pName:=ExtractFileDir(Form6.Label3.Caption);
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  Form6.Label2.Caption:='true';
  begin
  //if Form6.OpenDialog1.Execute then Form6.Label1.Caption:=Form6.OpenDialog1.FileName;
    Form1.ADOQuery1.Active:=False;
    Form1.ADOConnection1.Close;              //Data Source=dBASE Files;
    Form1.ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Data Source=dBASE Files;Initial Catalog=' + pName + ';Persist Security Info=False;';
    //Form1.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form5.Edit1.Text+';Persist Security Info=False;';
    Form1.ADOConnection1.Open();
    Form1.ADOQuery1.SQL.Text := 'SELECT * FROM ' + fName2 ; //+ ' UNION SELECT * FROM ' + fName2;
    Form1.ADOQuery1.Active:=True;
    Form6.Close;
end;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  Form6.Label1.Caption := 'label1';
  Form6.Label1.Visible := false;
  Form6.Label3.Caption := 'label3';
  Form6.Label3.Visible := false;
  Form6.Label2.Visible := false;
  Image1.Visible:=false;
  Form1.DBGrid1.DataSource:=nil;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
  if Form6.Label1.Caption=Form6.Label3.Caption then
      Image1.Visible:=not Image1.Visible
  else
      Image1.Visible:=false;
    // timer.Click(sender);
    // if c then label1.Font.Color:=clred else label1.Font.Color:=clyellow;
end;

end.
