program BAI3_D1;
uses crt;
type dayso=array [1..100] of word;
var A:dayso;
    t,N:integer;
    K:word;
procedure sapxepgiamdan(var B:dayso; M:integer);
var i,j:integer;
begin
  for i:=1 to m-1 do
      for j:=i+1 to m do
          if b[i]<b[j] then
          begin
            b[i]:=b[i]+b[j]; b[j]:=b[i]-b[j];b[i]:=b[i]-b[j];
          end;
  for i:=1 to m do write(b[i],#32);

end;
procedure chenso(var B:dayso;M:integer;H:word);
var i,vt:integer;
begin
     {tim vi tri can chen}
     for i:=1 to m do if H>b[i] then begin vt:=i;break; end;
     {dich chuyen}
     for i:=m+1 downto vt do b[i]:=b[i-1];
     {chen}
     b[vt]:=H;
     for i:=1 to m+1 do write(b[i],#32);
end;
begin
  clrscr;
  {Nhap}
  readln(N);
  for t:=1 to N do read(a[t]);readln;
  readln(K);
  {goi cac thu tuc theo yeu cau bai toan}
  sapxepgiamdan(a,n);
  writeln;
  chenso(a,n,k);
  readln

end.

