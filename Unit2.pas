unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Gauges, OleCtrls, Chartfx3, StdCtrls;

type
  TForm2 = class(TForm)
    Gauge1: TGauge;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    ProgressBar5: TProgressBar;
    ProgressBar6: TProgressBar;
    ProgressBar7: TProgressBar;
    ProgressBar8: TProgressBar;
    ProgressBar9: TProgressBar;
    ProgressBar10: TProgressBar;
    ProgressBar11: TProgressBar;
    ProgressBar12: TProgressBar;
    ProgressBar13: TProgressBar;
    ProgressBar14: TProgressBar;
    ProgressBar15: TProgressBar;
    ProgressBar16: TProgressBar;
    ProgressBar17: TProgressBar;
    ProgressBar18: TProgressBar;
    ProgressBar19: TProgressBar;
    ProgressBar20: TProgressBar;
    ProgressBar21: TProgressBar;
    ProgressBar22: TProgressBar;
    ProgressBar23: TProgressBar;
    ProgressBar24: TProgressBar;
    ProgressBar25: TProgressBar;
    ProgressBar26: TProgressBar;
    ProgressBar27: TProgressBar;
    ProgressBar28: TProgressBar;
    ProgressBar29: TProgressBar;
    ProgressBar30: TProgressBar;
    ProgressBar31: TProgressBar;
    ProgressBar32: TProgressBar;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Gauge4: TGauge;
    Gauge5: TGauge;
    Gauge6: TGauge;
    Gauge7: TGauge;
    Gauge8: TGauge;
    Gauge9: TGauge;
    Gauge10: TGauge;
    Gauge11: TGauge;
    Gauge12: TGauge;
    Gauge13: TGauge;
    Gauge14: TGauge;
    Gauge15: TGauge;
    Gauge16: TGauge;
    Gauge17: TGauge;
    Gauge18: TGauge;
    Gauge19: TGauge;
    Gauge20: TGauge;
    Gauge21: TGauge;
    Gauge22: TGauge;
    Gauge23: TGauge;
    Gauge24: TGauge;
    Gauge25: TGauge;
    Gauge26: TGauge;
    Gauge27: TGauge;
    Gauge28: TGauge;
    Gauge29: TGauge;
    Gauge30: TGauge;
    Gauge31: TGauge;
    Gauge32: TGauge;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
Var
I,j:integer;
  mayAr: array [1..32] of integer;
  er:textFile; rt,ty:string;
begin
//if FileExists('Param.txt')
For i:=1 to 32 do MayAr[i]:=0;


OpenDialog1.Execute;
 If OpenDialog1.FileName<>'' then begin
 I:=1;
AssignFile(er,OpenDialog1.FileName);  Reset(er);
   while (i<=32) and not (eof(er)) do
   begin
    readln (er,rt);
   //  if
 //   (StrToIntDef(rt,123456789)<>123456789)
 //  then

   for j:=1 to length(rt) do
   if  pos(rt[j],'1234567890')>0 then
   ty:=ty+rt[j]  else
  begin  inc(i); MayAr[i]:=StrToInt(ty); ty:=''end;
                       end;      CloseFile(er);
{ProgressBar1.Position:= random(1000) ;  ProgressBar2.Position:= random(1000) ;
ProgressBar3.Position:= random(1000) ;  ProgressBar4.Position:= random(1000) ;
ProgressBar5.Position:= random(1000) ;  ProgressBar6.Position:= random(1000) ;
ProgressBar7.Position:= random(1000) ;  ProgressBar8.Position:= random(1000) ;
ProgressBar9.Position:= random(1000) ;  ProgressBar10.Position:= random(1000) ;
ProgressBar11.Position:= random(1000) ;  ProgressBar12.Position:= random(1000) ;
ProgressBar13.Position:= random(1000) ;  ProgressBar14.Position:= random(1000) ;
ProgressBar15.Position:= random(1000) ;  ProgressBar16.Position:= random(1000) ;
ProgressBar17.Position:= random(1000) ;  ProgressBar18.Position:= random(1000) ;
ProgressBar19.Position:= random(1000) ;  ProgressBar20.Position:= random (1000);
ProgressBar21.Position:= random(1000) ;  ProgressBar22.Position:= random(1000) ;
ProgressBar23.Position:= random(1000) ;  ProgressBar24.Position:= random(1000) ;
ProgressBar25.Position:= random(1000) ;  ProgressBar26.Position:= random(1000) ;
ProgressBar27.Position:= random(1000) ;  ProgressBar28.Position:= random(1000) ;
ProgressBar29.Position:= random(1000) ;  ProgressBar30.Position:= random(1000) ;
ProgressBar31.Position:= random (1000);  ProgressBar32.Position:= random (1000);
}

Gauge1.Progress:= mayAr[1] ;  Gauge2.Progress:= mayAr[2] ;
Gauge3.Progress:= mayAr[3] ;  Gauge4.Progress:= mayAr[4] ;
Gauge5.Progress:= mayAr[5] ;  Gauge6.Progress:= mayAr[6] ;
Gauge7.Progress:= mayAr[7] ;  Gauge8.Progress:= mayAr[8] ;
Gauge9.Progress:= mayAr[9] ;  Gauge10.Progress:= mayAr[10] ;
Gauge11.Progress:= mayAr[11] ;  Gauge12.Progress:= mayAr[12] ;
Gauge13.Progress:= mayAr[13] ;  Gauge14.Progress:= mayAr[14] ;
Gauge15.Progress:= mayAr[15] ;  Gauge16.Progress:= mayAr[16] ;
Gauge17.Progress:= mayAr[17] ;  Gauge18.Progress:= mayAr[18] ;
Gauge19.Progress:= mayAr[19] ;  Gauge20.Progress:= mayAr[20] ;
Gauge21.Progress:= mayAr[21] ;  Gauge22.Progress:= mayAr[22] ;
Gauge23.Progress:= mayAr[23] ;  Gauge24.Progress:= mayAr[24] ;
Gauge25.Progress:= mayAr[25] ;  Gauge26.Progress:= mayAr[26] ;
Gauge27.Progress:= mayAr[27] ;  Gauge28.Progress:= mayAr[28] ;
Gauge29.Progress:= mayAr[29] ;  Gauge30.Progress:= mayAr[30] ;
Gauge31.Progress:= mayAr[31] ;  Gauge32.Progress:= mayAr[32] ;


if Gauge1.Progress<250 then Gauge1.Color:=clBtnFace; if Gauge2.Progress<250 then Gauge2.Color:=clBtnFace;
if Gauge3.Progress<250 then Gauge3.Color:=clBtnFace; if Gauge4.Progress<250 then Gauge4.Color:=clBtnFace;
if Gauge5.Progress<250 then Gauge5.Color:=clBtnFace; if Gauge6.Progress<250 then Gauge6.Color:=clBtnFace;
if Gauge7.Progress<250 then Gauge7.Color:=clBtnFace; if Gauge8.Progress<250 then Gauge8.Color:=clBtnFace;
if Gauge9.Progress<250 then Gauge9.Color:=clBtnFace; if Gauge10.Progress<250 then Gauge10.Color:=clBtnFace;
if Gauge11.Progress<250 then Gauge11.Color:=clBtnFace; if Gauge12.Progress<250 then Gauge12.Color:=clBtnFace;
if Gauge13.Progress<250 then Gauge13.Color:=clBtnFace; if Gauge14.Progress<250 then Gauge14.Color:=clBtnFace;
if Gauge15.Progress<250 then Gauge15.Color:=clBtnFace; if Gauge16.Progress<250 then Gauge16.Color:=clBtnFace;
if Gauge17.Progress<250 then Gauge17.Color:=clBtnFace; if Gauge18.Progress<250 then Gauge18.Color:=clBtnFace;
if Gauge19.Progress<250 then Gauge19.Color:=clBtnFace; if Gauge20.Progress<250 then Gauge20.Color:=clBtnFace;
if Gauge21.Progress<250 then Gauge21.Color:=clBtnFace; if Gauge22.Progress<250 then Gauge22.Color:=clBtnFace;
if Gauge23.Progress<250 then Gauge23.Color:=clBtnFace; if Gauge24.Progress<250 then Gauge24.Color:=clBtnFace;
if Gauge25.Progress<250 then Gauge25.Color:=clBtnFace; if Gauge26.Progress<250 then Gauge26.Color:=clBtnFace;
if Gauge27.Progress<250 then Gauge27.Color:=clBtnFace; if Gauge28.Progress<250 then Gauge28.Color:=clBtnFace;
if Gauge29.Progress<250 then Gauge29.Color:=clBtnFace; if Gauge30.Progress<250 then Gauge30.Color:=clBtnFace;
if Gauge31.Progress<250 then Gauge31.Color:=clBtnFace; if Gauge32.Progress<250 then Gauge32.Color:=clBtnFace;


if Gauge1.Progress>250 then Gauge1.Color:=clYellow; if Gauge2.Progress>250 then Gauge2.Color:=clYellow;
if Gauge3.Progress>250 then Gauge3.Color:=clYellow; if Gauge4.Progress>250 then Gauge4.Color:=clYellow;
if Gauge5.Progress>250 then Gauge5.Color:=clYellow; if Gauge6.Progress>250 then Gauge6.Color:=clYellow;
if Gauge7.Progress>250 then Gauge7.Color:=clYellow; if Gauge8.Progress>250 then Gauge8.Color:=clYellow;
if Gauge9.Progress>250 then Gauge9.Color:=clYellow; if Gauge10.Progress>250 then Gauge10.Color:=clYellow;
if Gauge11.Progress>250 then Gauge11.Color:=clYellow; if Gauge12.Progress>250 then Gauge12.Color:=clYellow;
if Gauge13.Progress>250 then Gauge13.Color:=clYellow; if Gauge14.Progress>250 then Gauge14.Color:=clYellow;
if Gauge15.Progress>250 then Gauge15.Color:=clYellow; if Gauge16.Progress>250 then Gauge16.Color:=clYellow;
if Gauge17.Progress>250 then Gauge17.Color:=clYellow; if Gauge18.Progress>250 then Gauge18.Color:=clYellow;
if Gauge19.Progress>250 then Gauge19.Color:=clYellow; if Gauge20.Progress>250 then Gauge20.Color:=clYellow;
if Gauge21.Progress>250 then Gauge21.Color:=clYellow; if Gauge22.Progress>250 then Gauge22.Color:=clYellow;
if Gauge23.Progress>250 then Gauge23.Color:=clYellow; if Gauge24.Progress>250 then Gauge24.Color:=clYellow;
if Gauge25.Progress>250 then Gauge25.Color:=clYellow; if Gauge26.Progress>250 then Gauge26.Color:=clYellow;
if Gauge27.Progress>250 then Gauge27.Color:=clYellow; if Gauge28.Progress>250 then Gauge28.Color:=clYellow;
if Gauge29.Progress>250 then Gauge29.Color:=clYellow; if Gauge30.Progress>250 then Gauge30.Color:=clYellow;
if Gauge31.Progress>250 then Gauge31.Color:=clYellow; if Gauge32.Progress>250 then Gauge32.Color:=clYellow;


if Gauge1.Progress>500 then Gauge1.Color:=clGreen; if Gauge2.Progress>500 then Gauge2.Color:=clGreen;
if Gauge3.Progress>500 then Gauge3.Color:=clGreen; if Gauge4.Progress>500 then Gauge4.Color:=clGreen;
if Gauge5.Progress>500 then Gauge5.Color:=clGreen; if Gauge6.Progress>500 then Gauge6.Color:=clGreen;
if Gauge7.Progress>500 then Gauge7.Color:=clGreen; if Gauge8.Progress>500 then Gauge8.Color:=clGreen;
if Gauge9.Progress>500 then Gauge9.Color:=clGreen; if Gauge10.Progress>500 then Gauge10.Color:=clGreen;
if Gauge11.Progress>500 then Gauge11.Color:=clGreen; if Gauge12.Progress>500 then Gauge12.Color:=clGreen;
if Gauge13.Progress>500 then Gauge13.Color:=clGreen; if Gauge14.Progress>500 then Gauge14.Color:=clGreen;
if Gauge15.Progress>500 then Gauge15.Color:=clGreen; if Gauge16.Progress>500 then Gauge16.Color:=clGreen;
if Gauge17.Progress>500 then Gauge17.Color:=clGreen; if Gauge18.Progress>500 then Gauge18.Color:=clGreen;
if Gauge19.Progress>500 then Gauge19.Color:=clGreen; if Gauge20.Progress>500 then Gauge20.Color:=clGreen;
if Gauge21.Progress>500 then Gauge21.Color:=clGreen; if Gauge22.Progress>500 then Gauge22.Color:=clGreen;
if Gauge23.Progress>500 then Gauge23.Color:=clGreen; if Gauge24.Progress>500 then Gauge24.Color:=clGreen;
if Gauge25.Progress>500 then Gauge25.Color:=clGreen; if Gauge26.Progress>500 then Gauge26.Color:=clGreen;
if Gauge27.Progress>500 then Gauge27.Color:=clGreen; if Gauge28.Progress>500 then Gauge28.Color:=clGreen;
if Gauge29.Progress>500 then Gauge29.Color:=clGreen; if Gauge30.Progress>500 then Gauge30.Color:=clGreen;
if Gauge31.Progress>500 then Gauge31.Color:=clGreen; if Gauge32.Progress>500 then Gauge32.Color:=clGreen;

if Gauge1.Progress>750 then Gauge1.Color:=Clred; if Gauge2.Progress>750 then Gauge2.Color:=Clred;
if Gauge3.Progress>750 then Gauge3.Color:=Clred; if Gauge4.Progress>750 then Gauge4.Color:=Clred;
if Gauge5.Progress>750 then Gauge5.Color:=Clred; if Gauge6.Progress>750 then Gauge6.Color:=Clred;
if Gauge7.Progress>750 then Gauge7.Color:=Clred; if Gauge8.Progress>750 then Gauge8.Color:=Clred;
if Gauge9.Progress>750 then Gauge9.Color:=Clred; if Gauge10.Progress>750 then Gauge10.Color:=Clred;
if Gauge11.Progress>750 then Gauge11.Color:=Clred; if Gauge12.Progress>750 then Gauge12.Color:=Clred;
if Gauge13.Progress>750 then Gauge13.Color:=Clred; if Gauge14.Progress>750 then Gauge14.Color:=Clred;
if Gauge15.Progress>750 then Gauge15.Color:=Clred; if Gauge16.Progress>750 then Gauge16.Color:=Clred;
if Gauge17.Progress>750 then Gauge17.Color:=Clred; if Gauge18.Progress>750 then Gauge18.Color:=Clred;
if Gauge19.Progress>750 then Gauge19.Color:=Clred; if Gauge20.Progress>750 then Gauge20.Color:=Clred;
if Gauge21.Progress>750 then Gauge21.Color:=Clred; if Gauge22.Progress>750 then Gauge22.Color:=Clred;
if Gauge23.Progress>750 then Gauge23.Color:=Clred; if Gauge24.Progress>750 then Gauge24.Color:=Clred;
if Gauge25.Progress>750 then Gauge25.Color:=Clred; if Gauge26.Progress>750 then Gauge26.Color:=Clred;
if Gauge27.Progress>750 then Gauge27.Color:=Clred; if Gauge28.Progress>750 then Gauge28.Color:=Clred;
if Gauge29.Progress>750 then Gauge29.Color:=Clred; if Gauge30.Progress>750 then Gauge30.Color:=Clred;
if Gauge31.Progress>750 then Gauge31.Color:=Clred; if Gauge32.Progress>750 then Gauge32.Color:=Clred;
  end else ShowMessage('Нету файла Param.txt');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Print;
end;

end.
