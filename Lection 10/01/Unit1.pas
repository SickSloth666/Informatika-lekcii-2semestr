unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
const
n=5;
m=5;
var
    a:array[1..n,1..m] of integer;
    i,j,max:integer;
begin
max:=0;
StringGrid1.ColCount:=n;
stringgrid1.RowCount:=m;
stringgrid1.FixedCols:=0;
stringgrid1.FixedRows:=0;
// заполняем
randomize;
for i:=1 to length(a) do begin
    for j:=1 to length(a[i]) do begin
                                  a[i,j]:=random(100);
                                  stringgrid1.Cells[i-1,j-1]:=inttostr(a[i,j]);
                                  // ищем максимальный элемент
                                  if a[i,j] > max then max:= a[i,j];
                                   end;
                           end;
 showmessage('максимальный элемент = '+inttostr(max));

end;

end.
