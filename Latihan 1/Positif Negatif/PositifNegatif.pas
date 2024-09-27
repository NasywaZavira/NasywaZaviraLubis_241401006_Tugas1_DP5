program bilangan;
uses crt;

var 
  a:integer;
  
begin 
clrscr;
  write('Masukkan bilangan: '); readln(a);

  if (a > 0) then
    begin
      writeln (a ,' adalah bilangan bulat positif');
    end
  else if(a < 0) then
    begin
      writeln (a ,' adalah bilangan bulat negatif');
    end
  else if (a = 0) then
    begin
      writeln (a, ' adalah bilangan netral'); 
    end;
end.