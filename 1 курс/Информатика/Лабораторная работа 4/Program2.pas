program m2;
var 
 b,n:integer;
 a,h,S1,x,S2,I:real;
function fn(x:real):real;
 begin
  fn:=sqrt(2*x*x+1.6)/(2*x+sqrt(0.5*x*x+3));
 end;
begin
 write ('Ведите количиство разбиений - ');
 readln (n);
 a:=1.2;
 b:=2;
 h:=(b-a)/n;
 S1:=0;
 x:=a+h;
 while x<=b-h do
  begin
   S1:=S1+fn(x);
   x:=x+2*h;
  end;
 S2:=0;
 x:=a+2*h;
 while x<=b-2*h do
  begin
   S2:=S2+fn(x);
   x:=x+2*h;
  end;
 I:=h/3*(fn(a)+fn(b)+4*S1+2*S2);
 writeln (I);
end.