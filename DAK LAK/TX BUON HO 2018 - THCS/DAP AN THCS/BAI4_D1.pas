program BAI4_D1;
uses crt;
type dayso=array[1..200] of integer;
var n,i,max:integer;
    a:dayso;
function tong(K:integer):integer;
var tam:integer;
begin
  tong:=0;
  while k<>0 do
  begin
    tam:=k mod 10;
    tong:=tong+tam;
    k:=k div 10;
  end;
end;
function daonguoc(K:integer):integer;
var tam1,tam2,dau:integer;
begin
  tam2:=k; dau:=1;
  while tam2<>0 do
  begin
    tam2:=tam2 div 10;
    dau:=dau*10;
  end;dau:=dau div 10;
  daonguoc:=0;
  while k<>0 do
   begin
     tam1:=k mod 10;
     daonguoc:=daonguoc+dau*tam1;
     k:=k div 10;
     dau:=dau div 10;
   end;
end;
begin
  clrscr;
  {Nhap day}
  readln(N);
  for i:=1 to n do read(a[i]); readln;
  {tong chu so lon nhat}
  max:=tong(a[1]);
  for i:=2 to n do if tong(a[i])>=max then max:=tong(a[i]);
  write(max);writeln;
  {So dao nguoc}
  for i:=1 to n do write(daonguoc(a[i]),#32);
  readln
end.


