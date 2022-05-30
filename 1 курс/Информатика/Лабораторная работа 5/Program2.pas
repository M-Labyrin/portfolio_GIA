program m2;
var
 q1,q2,w1,w2,e1,e2,r1,r2,t1,t2: integer;
 S1,S2,S3,R: real;
function fn(a,b,c: real): real;
 var p: real;
 begin
  p:=(a+b+c)/2;
  fn:=sqrt(p*(p-a)*(p-b)*(p-c));
 end;
function fn2(s,d,f,g,h,j: integer): real;
 var x,y,z: real;
 begin
  x:=sqrt((s-f)*(s-f)+(d-g)*(d-g));
  y:=sqrt((f-h)*(f-h)+(g-j)*(g-j));
  z:=sqrt((s-h)*(s-h)+(d-j)*(d-j));
  fn2:=fn(x,y,z);
 end;
begin 
 write ('Введите координаты первой вершины пятиугольника - ');
 read (q1); write (':'); readln (q2);
 write ('Введите координаты второй вершины пятиугольника - ');
 read (w1); write (':'); readln (w2);
 write ('Введите координаты третьей вершины пятиугольника - ');
 read (e1); write (':'); readln (e2);
 write ('Введите координаты четвёртой вершины пятиугольника - ');
 read (r1); write (':'); readln (r2);
 write ('Введите координаты пятой вершины пятиугольника - ');
 read (t1); write (':'); readln (t2);
 S1:=fn2(q1,q2,w1,w2,t1,t2);
 S2:=fn2(w1,w2,e1,e2,r1,r2);
 S3:=fn2(t1,t2,w1,w2,r1,r2);
 R:=S1+S2+S3;
 writeln (R:5:5);
end.
 