program VendingMachineSimple;

uses crt;

const
  MAX_ITEMS = 3;

var
  items: array[1..MAX_ITEMS] of string;
  prices: array[1..MAX_ITEMS] of integer;
  choice, insertedMoney, change: integer;
  i: integer;

begin
  clrscr;
  
  items[1] := 'Coca Cola'; prices[1] := 5000;
  items[2] := 'Pepsi'; prices[2] := 4500;
  items[3] := 'Sprite'; prices[3] := 4000;
  
  while true do
  begin
    writeln('!Selamat Datang di Vending Machine!');
    for i := 1 to MAX_ITEMS do
    begin
      writeln(i, '. ', items[i], ' - Rp', prices[i]);
    end;
    
    write('Pilih nomor minuman (1-', MAX_ITEMS, '):'); readln(choice);
    
    if (choice < 1) or (choice > MAX_ITEMS) then
    begin
      writeln('Pilihan tidak valid. Silakan coba lagi.');
      continue;
    end;

    writeln('Anda memilih: ', items[choice]);
    writeln('Harga: Rp', prices[choice]);

    write('Masukkan uang Anda (Rp):'); readln(insertedMoney);
    
    if insertedMoney >= prices[choice] then
    begin
      change := insertedMoney - prices[choice];
      writeln('Minuman ', items[choice], ' sedang diproses...');
      writeln('Kembalian Anda: Rp', change);
    end
    else
    begin
      writeln('Uang tidak cukup. Transaksi dibatalkan.');
    end;

    writeln('Terima kasih telah menggunakan vending machine kami!');
    writeln;
    writeln('Tekan Enter untuk melanjutkan...');
    readln;
    clrscr;
  end;
end.
