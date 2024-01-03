unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart, Series;

type
  TForm3 = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    Series2: TBarSeries;
    procedure DBChart1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
    Ser2 :THorizBarSeries;
implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.DBChart1Click(Sender: TObject);
Var
  mayAr: array [1..32] of integer;
    I:integer;
  ret,jt:TChartAxis;
begin
  Ser2 := THorizBarSeries.Create(DBChart1);
  Ser2.ParentChart := DBChart1;
  For i:=1 to 32 do
   MayAr[i]:=random(1000) ;

  Ser1.AddValue(MayAr[i]);
    
   
end;
end.
