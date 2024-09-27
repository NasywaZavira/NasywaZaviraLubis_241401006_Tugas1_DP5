program bilangan_prima;
uses crt;

var
n, i : integer;
angka : boolean;

begin
clrscr;
write ('Masukkan bilangan bulat: '); readln (n);

angka:= true;

if ((n=0) or (n=1)) then
  angka:= false
else 
  begin 
  for i:= 2 to (n div 2) do 
    begin
      if ((n mod i)= 0) then
        begin
          angka:= false;
          break;
        end;
      end;
    end;

if (angka) then
  begin
    writeln(n, ' adalah angka prima');
  end
else
  begin 
    writeln (n, ' bukanlah angka prima');
  end;

end.