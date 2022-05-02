program BAI2_D1;
uses crt;
var a,b:integer;
function UCLN(c,d:integer):integer;
var tam:integer;
begin
  tam:=c mod d;
  while tam<>0 do
  begin
    c:=d; d:=tam;tam:=c mod d;
  end;
  ucln:=d;
end;
begin
  clrscr;
  {Nhap a,b}
  read(a,b);readln;
  writeln(a*b div ucln(a,b));
  write(a div ucln(a,b),#32,b div ucln(a,b));
  readln
end.

