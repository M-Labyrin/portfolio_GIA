program m3;
var
 x,n,m,i,d: integer;
 S,R: real;
 m2: longint;
function fn(i:integer):real;
 var p: integer;
 begin
  p:=2*i+1;
  fn:=1/m*exp(ln(x)*p)/p;
 end;
begin
 x:=1;
 n:=5;
 m:=1;
 S:=0;
 i:=1;
 for i:=1 to n do
 begin
  m:=m*(i+1);
  S:=S+fn(i);
 end;
 m2:=1;
 d:=1;
 for d:=1 to 3*n do
  m2:=m2*d;
 R:=S/(5.5+x*x+m2);
 writeln (R:2:12);
end.
 