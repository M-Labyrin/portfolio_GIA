program m3;
var
 x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4,R: real;
 function fn(a,b,c: real): real;
 var
  p: real;
 begin
  p:=(a+b+c)/2;
  fn:=sqrt(p*(p-a)*(p-b)*(p-c));
 end;
begin
 write ('Введите стороны треугольников, состовляющих фигуру - ');
 readln (x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4);
 R:=fn(x1,y1,z1)+fn(x2,y2,z2)+fn(x3,y3,z3)+fn(x4,y4,z4);
 writeln (R:3:5);
end.