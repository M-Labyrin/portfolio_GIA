program m4;
var
 n: integer;
procedure pr(a: integer);
 var 
  p,v,z,i: integer;
begin
 p:=0;
 v:=1;
 if a>=3 then
   for i:=3 to a do
    begin
     write (p+v,' ');
     z:=v;
     v:=p+v;
     p:=z;
    end;
end;
begin
 write ('ВВедите колическтво чисел - ');
 readln (n);
 if n>=1 then write (0,' ');
 if n>=2 then write (1,' ');
 pr(n);
end.
 
   