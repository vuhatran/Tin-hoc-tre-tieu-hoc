program bai4_d2;
type kdl=0..2018;
var vt,i,m,d:kdl;
function tonguoc(k:kdl):kdl;
begin
  tonguoc:=0;
  for i:=1 to k do
      if k mod i=0 then tonguoc:=tonguoc+i;
end;
function nto(h:kdl):boolean;
begin
  nto:=true;
  for i:=2 to h-1 do
      if h mod i=0 then
      begin
        nto:=false;
        break;
      end;
end;
begin
  readln(m);
  writeln(tonguoc(m));
  vt:=0; d:=1;
  while vt<>m do
  begin
    inc(d);
    if nto(d) then inc(vt);
  end;
  write(d);
  readln
end.

