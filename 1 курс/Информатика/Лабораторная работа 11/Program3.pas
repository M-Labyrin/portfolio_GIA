program m3;
var A: real;
    S,i: integer;
function fa(x: integer): longint;
 var t: integer;
     h: longInt;
 begin
  h:=1;
  for t:=1 to x do
  begin
   h:=h*t;
   fa:=h;
  end;
 end;
begin
 writeln ('Введите число - ');
 readln (A);
 S:=0;
 i:=1;
 while S<=A do
  begin
   S:=S+fa(i);
   if S<=A then write (fa(i),'  ');
   i:=i+1;
  end;
 write ('Сумма=',S-fa(i-1));
end. 


