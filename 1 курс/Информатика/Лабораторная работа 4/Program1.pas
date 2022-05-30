 program m2;
 var
  b,n: integer;
  a,h,S,x,I,z,y: real;
   function fn(x:real):real;
   begin
   fn:=sqrt(2*x*x-1.6)/(2*x+sqrt(0.5*x*x+3));
   end;
  begin
   write ('Введите количество шагов - ');
   readln (n);
   a:=1.2;
   b:=2;
   S:=0;
   h:=(b-a)/n;
   x:=a+h;
   while x<=b-h do
   begin
    S:=S+fn(x);
    x:=x+h;
   end;
   I:=h*((fn(a)+fn(b))/2+S);
   writeln (I);
   end.