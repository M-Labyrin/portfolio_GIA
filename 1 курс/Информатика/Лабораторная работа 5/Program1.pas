program m1;
var
 d: integer;
 procedure pr(a: integer);
 var
  S: real;
 begin
  S:=a*2.5;
  if (a>=1) and (a<=9) then write ('|     ',a,'      |');
  if (a>=10) and (a<=99) then write ('|     ',a,'     |');
  if a=100 then write ('|     ',a,'    |'); 
  write ('     ');
  write (S:3:1);
  if a<=3 then writeln ('    |');
  if (a>=4) and (a<=39) then writeln ('   |');
  if a>=40 then writeln ('  |');
  writeln ('---------------------------');
 end;
begin
 writeln ('---------------------------');
 writeln ('|   Дюймы    | Сантиметры |');
 writeln ('---------------------------');
 d:=1;
 for d:=1 to 100 do
 pr(d);
end.