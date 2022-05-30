program Project1;
  var x: array [1..10] of integer;
   k,a,d1,d2,d3,z,i: integer;
   fa: longInt;
   y: real;
begin
 writeln ('Vvedite k - ');
 readln (k);
 writeln ('Vvedite a - ');
 readln (a);
 writeln ('Vvedite d1 - ');
 readln (d1);
 writeln ('Vvedite d2 - ');
 readln (d2);
 writeln ('Vvedite d3 - ');
 readln (d3);
 z:=0;
 for i:=1 to 10 do
  begin
   x[i]:=random(100);
   write (x[i],'  ');
  end;
 fa:=1;
 for i:=2 to 10 do
  fa:=fa*i;
 for i:=1 to 10 do
  begin
   if (x[i]>=d1) and (x[i]<d2) then
    begin
     y:=exp(ln(a+x[i])*1/k);
     writeln (y:2:6);
    end;
   if (x[i]>d2) and (x[i]<=d3) then
    begin
     while (z<=10) do
      begin
       y:=(exp(ln(z)*x[i])+x[i])/fa;
       writeln (y:2:6);
       z:=z+2;
      end;
    end;
  end;
end.
