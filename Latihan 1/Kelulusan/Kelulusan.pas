program kelulusan;
uses crt;

var
n: real;

begin 
clrscr;
write ('Masukkan nilai anda : '); readln (n);

if (n >= 60) then
  begin
    writeln ('Selamat Anda Lulus!'); 
  end
else if (n < 60 ) then
  begin
    writeln ('Maaf, Anda Tidak Lulus.'); 
  end;
end.