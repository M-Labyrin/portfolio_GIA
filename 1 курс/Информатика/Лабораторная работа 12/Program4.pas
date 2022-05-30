program sss4;
var m: array [1..3,1..3] of integer;
  i,j,S1,S2,S3,max,min: integer;
begin
 randomize;
 for i:=1 to 3 do
  begin
   for j:=1 to 3 do
    begin
     m[i,j]:=random(100);
     write (m[i,j],'  ');
    end;
   writeln;
  end;
  for j:=1 to 3 do
   begin
    S1:=S1+m[1,j];
    S2:=S2+m[2,j];
    S3:=S3+m[3,j];
   end;
 writeln;
 writeln ('Сумма элементов первой строки=',S1);
 writeln ('Сумма элементов второй строки=',S2);
 writeln ('Сумма элементов третьей строки=',S3);
 writeln;
 max:=S1;
 if (S2>max) and (S2>S3) then max:=S2;
 if (S3>max) and (S3>S2) then max:=S3;
 min:=S1;
 if (S2<min) and (S2<S3) then min:=S2;
 if (S3<min) and (S3<S2) then min:=S3;
 writeln ('отсортированная матрица');
 if min=S1 then write (m[1,1],'  ',m[1,2],'  ',m[1,3])
 else if min=S2 then write (m[2,1],'  ',m[2,2],'  ',m[2,3])
  else if min=S3 then write (m[3,1],'  ',m[3,2],'  ',m[3,3]);
 writeln;
 if (S1<>min) and (S1<>max) then write (m[1,1],'  ',m[1,2],'  ',m[1,3])
 else if (S2<>min) and (S2<>max) then write (m[2,1],'  ',m[2,2],'  ',m[2,3])
  else if (S3<>min) and (S3<>max) then write (m[3,1],'  ',m[3,2],'  ',m[3,3]);
 writeln;
 if max=S1 then write (m[1,1],'  ',m[1,2],'  ',m[1,3])
 else if max=S2 then write (m[2,1],'  ',m[2,2],'  ',m[2,3])
  else if max=S3 then write (m[3,1],'  ',m[3,2],'  ',m[3,3]);
end.                       
