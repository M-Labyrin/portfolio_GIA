program m4;
var
 i: integer;
 A:array [1..5] of integer;
 B:array [1..5] of integer;
 C:array [1..10] of integer;
begin
 i:=1;
 for i:=1 to 5 do 
  begin
   write ('Введите элемент массива A №',i,' = ');
   readln (A[i]);
   write ('Введите элемент массива B №',i,' = ');
   readln (B[i]);
  end;
  for i:=1 to 5 do 
   begin
    C[i]:=A[i];
    C[5+i]:=B[i];
   end;
   writeln ('Массив С');
   for i:=1 to 10 do
     write (C[i],' ');
end.