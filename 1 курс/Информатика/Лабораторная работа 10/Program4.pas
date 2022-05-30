program m4;
 var 
  m: array [1..10] of integer;
  i,k,x: integer;
begin
 randomize;
 for i:=1 to 10 do
  begin
   m[i]:=random(100);
   write (m[i],'  ');
  end;
 writeln ('- изначальный вид массива');
 for k:=1 to 10 do
  begin
   for i:=k to 10 do
    if m[i]>m[k] then
     begin
      x:=m[k];
      m[k]:=m[i];
      m[i]:=x;
     end;
   write (m[k],'  ');
  end;
 writeln ('- итоговый вид массива');
end.