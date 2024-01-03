unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm3 = class(TForm)
    procedure FormClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormClick(Sender: TObject);
var xc,yc:integer;
begin
//InvalidateRect( Handle, NIL, FALSE ) ;

with form3.Canvas do begin
 Repaint ;
Ellipse(0,0,form3.Width-10,Form3.Height-50);
xc:=(form3.Width-10)div 2;
yc:=(Form3.Height-50)div 2;

Ellipse(xc div 4,yc div 4,(xc*7)div 4 ,(yc*7)div 4);
Ellipse((xc*2) div 4,(yc*2) div 4,(xc*6)div 4 ,(yc*6)div 4);
Ellipse((xc*3) div 4,(yc*3) div 4,(xc*5)div 4 ,(yc*5)div 4);


moveto(xc,yc);LineTo(0,0);
moveto(xc,yc);LineTo(xc,0);
moveto(xc,yc);LineTo(xc*2,0);
moveto(xc,yc);LineTo(xc div 2,0);
moveto(xc,yc);LineTo(xc*2+(xc div 2),0);

moveto(xc,yc);LineTo( 0,yc Div 2);

moveto(xc,yc);LineTo(xc*2,yc Div 2);




//moveto(xc,yc);LineTo(xc*2,yc*2);

end
end;

procedure TForm3.FormResize(Sender: TObject);
begin
FormClick(Form3);
end;

end.
