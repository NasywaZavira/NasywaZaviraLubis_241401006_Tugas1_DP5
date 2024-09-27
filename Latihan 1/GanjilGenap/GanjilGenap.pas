program ganjilgenap;
uses crt;

var
bil, hasil:integer;
p:string;

begin
clrscr;
write ('Masukkan bilangan bulat: '); readln (bil);

hasil:=bil mod 2;
if (hasil=0) then
  begin 
    p:='Bilangan Genap';
  end
else
  begin 
    p:='Bilangan Ganjil';
  end;

writeln ('Bilangan ',bil,' terkategori ',p);
end.