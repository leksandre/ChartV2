unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, TeeFunci, Series, ExtCtrls, TeeProcs, Chart,
  DbChart, Mask, DBCtrls, Menus;

type
  TForm1 = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Close1: TMenuItem;
    Open1: TMenuItem;
    N21: TMenuItem;
    Print1: TMenuItem;
    Run1: TMenuItem;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure DBChart1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Run1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Variant31Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Ser1 : TPieSeries;
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.DBChart1Click(Sender: TObject);
Var
  mayAr: array [1..32] of Double;
    I:integer;
  ret,jt:TChartAxis;
begin
{ ret:=  Ser1.GetHorizAxis ;
 jt:=Ser1.GetVertAxis;
 Ser1.VertAxis:=TVertAxis(ret);
 Ser1.HorizAxis:=ThorizAxis(jt);     }
  
  Ser1 := TPieSeries.Create(DBChart1);
  Ser1.ParentChart := DBChart1;
 // RadioGroup1Click(Form1);
 // RadioGroup2Click(Form1);
  For i:=1 to 32 do
  begin
   MayAr[i]:=random ;   // Form2.ProgressBar1.Position
  //Objej:=FindComponent('ProgressBar' + IntToStr(i));
  //Objej.Position := MayAr[i];
   //FindComponent('Gauge' + IntToStr(i)).Position := MayAr[i];
     end;
  Ser1.AddArray(MayAr);
    Ser1.Rotate(ser1.RotationAngle);
    Ser1.Marks.Visible:=false;
    timer1.Enabled:=true;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm1.Run1Click(Sender: TObject);
begin
Form1.Print;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
Case radiogroup1.ItemIndex of
0:Ser1.HorizAxis:=aTopAxis;
1:Ser1.HorizAxis:=aBottomAxis;
2:Ser1.HorizAxis:=aBothHorizAxis;
3:Ser1.HorizAxis:=aCustomHorizAxis;
end;

end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
Case radiogroup1.ItemIndex of
0:Ser1.VertAxis:=aLeftAxis;
1:Ser1.VertAxis:=aRightAxis;
2:Ser1.VertAxis:=aBothVertAxis;
3:Ser1.VertAxis:=aCustomVertAxis;
end;

end;

procedure TForm1.Variant31Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var i:integer;     mayAr: array [1..32] of Double;
begin
  For i:=1 to 32 do
  begin
   MayAr[i]:=random ;   // Form2.ProgressBar1.Position
   end;
  Ser1.AddArray(MayAr);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
Timer1.Interval:=random(100);
Timer2.Interval:=random(1000);
 DBChart1Click(Form1);
end;

end.
