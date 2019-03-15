unit Unit1;

interface
        //
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    N5: TMenuItem;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    procedure Edit1Change(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fName1, fName2, pName: String;

const
  ECM_FIRST = $1500;
  EM_SETCUEBANNER = ECM_FIRST + 1;
  MyText = 'Поиск...';

implementation

{$R *.dfm}

uses Unit5;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Label1.Visible:=true;
  if Form1.OpenDialog1.Execute then Form1.Label1.Caption:=Form1.OpenDialog1.FileName;
  if (Label1.Caption<>'') and (Label3.Caption<>'') and (Label1.Caption=Label3.Caption) then
  begin
     Label5.Visible := true;
     Label5.Caption:='Вы выбрали один и тот же файл';
     Image1.Visible:=true;
  end
    else
  begin
     Label5.Visible := false;
  end;

  if (Form1.Label1.Caption<>'') and (Form1.Label3.Caption <> '') and (Form1.Label1.Caption <> Form1.Label3.Caption)  then
    begin
        Form1.Button3.Enabled:=true;
    end
  else
    Form1.Button3.Enabled:=false;
  fName1:=ExtractFileName(Label1.Caption);
  pName:=ExtractFileDir(Label1.Caption);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Form1.Label3.Visible:=true;
  if Form1.OpenDialog1.Execute then Form1.Label3.Caption:=Form1.OpenDialog1.FileName
  else;
  if (Label1.Caption<>'') and (Label3.Caption<>'') and (Label1.Caption=Label3.Caption) then
    begin
     Label5.Visible := true;
     Label5.Caption:='Вы выбрали один и тот же файл';
     Image1.Visible:=true;
  end
  else
  begin
     Label5.Visible := false;
  end;

  if (Form1.Label3.Caption<>'') and (Form1.Label1.Caption <> '') and (Form1.Label1.Caption <> Form1.Label3.Caption) then
    begin
        Form1.Button3.Enabled:=true;
    end
  else
    Form1.Button3.Enabled:=false;
  fName2:=ExtractFileName(Form1.Label3.Caption);
   pName:=ExtractFileDir(Label1.Caption);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label5.Caption:='true';
  begin
    ADOQuery1.Active:=False;
    ADOConnection1.Close;
    ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Data Source=dBASE Files;Initial Catalog=' + pName + ';Persist Security Info=False;';
    Form1.ADOConnection1.Open();
    //ADOQuery1.SQL.Text := 'SELECT * FROM ' + fName1 + ' UNION SELECT * FROM ' + fName2;     // рабочий запрос с UNION
    ADOQuery1.SQL.Text := 'DECLARE @res TABLE (DESCRIPT var, KEYIMBASE var, SUMMA int) INSERT INTO @res SELECT t1.* FROM ' + fName1 + ' , ' + fName2 + ' WHERE t1.key!=t2.key';
    ADOQuery1.Active:=True;
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Label1.Caption := '';
  Label1.Visible := false;
  Label3.Caption := '';
  Label3.Visible := false;
  Label5.Visible := false;
  Image1.Visible:=false;
  DBGrid1.DataSource:=nil;
end;

procedure TForm1.Edit1Change(Sender: TObject);
  var help1, help2: string;
begin
   help1:='%'+Form1.Edit1.Text+'%';
   help2:=QuotedStr(help1);
   with Form1.ADOQuery1 do
   begin
     close;
     SQL.Clear;
     SQL.Add('select * from ' + fName1 + ' where DESCRIPT like' + help2 + ' or KEYIMBASE like' + help2 + ' or SUMMA like' + help2 + ' order by SUMMA');
     Open;
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    SendMessage(Edit1.Handle, EM_SETCUEBANNER, 0, LParam(PChar(WideString(MyText))));
    Label1.Caption := '';
    Label3.Caption := '';
end;

procedure TForm1.N10Click(Sender: TObject);    // Открыть БД
begin
    Form5.Show;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if (Label1.Caption<>'') and (Label3.Caption<>'') and (Label1.Caption=Label3.Caption) then
      Image1.Visible:=not Image1.Visible
  else
      Image1.Visible:=false;
end;

end.
