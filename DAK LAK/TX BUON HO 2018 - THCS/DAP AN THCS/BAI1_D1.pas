program BAI1_D1;
uses crt, unit1;
var N,a,b,C: byte;
begin
  clrscr;
  {Nhap N}
  readln(N);
  {Thuat toan}
  a:=1; b:=1; c:=0;
  while c<N do
  begin
    c:=a+b;a:=b;b:=c;
  end;
  if c=n then write('YES') else write('NO');
  readln
end.

