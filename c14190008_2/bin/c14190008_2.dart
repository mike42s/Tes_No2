import 'dart:io';
import 'TravelGuide.dart';
import 'benda.dart';
import 'buku.dart';
import 'cd.dart';

void main(List<String> arguments) {
  List Item = new List.empty(growable: true);
  List Item_Ditempatlain;
  // Item.add(Benda(01, "Hai", "Mengapa?", 30000));
  // Item.add(BukuBiasa(02, "halo", "Kenapa", 30000, 40000, "Pak GG"));
  // Item.add(
  //     TravelGuide(03, "hehe", "abc", 40000, 50000, "Siapapun", "Indonesia"));
  // Item.add(CD(04, "Kiana", "Senang", 50000, "Kena"));
  // print(Item[0].Display());
  // print(Item[1].Display());
  // print(Item[2].Display());
  // print(Item[3].Display());
  int? menu = 1;
  String? coba_input;
  int nomor_id_1 = 1;
  int counter_Item = 0;
  do {
    stdout.write(
        "1.Menambahkan Barang\n2.Menampilkan Barang\n3.Meletakkan Barang pada lokasi tertentu\n4.Menampilkan seluruh barang pada lokasi tertentu\n0.Exit\n");
    coba_input = stdin.readLineSync();
    menu = int.parse(coba_input!);
    if (menu == 1) {
      stdout.write(
          "Menambahkan Barang : \n1. Buku Biasa\n2. Buku Travel Guide\n3.CD\n0.Back\n");
      coba_input = stdin.readLineSync();
      int menu2 = int.parse(coba_input!);
      if (menu2 == 1) {
        // Benda
        stdout.write("Buku Biasa : \n");
        //stdout.write("\nID : ");
        // coba_input = stdin.readLineSync();
        // int? ID = int.parse(coba_input!); //ID
        print("ID = $counter_Item");
        stdout.write("\nNama : ");
        String? Nama = stdin.readLineSync(); //Nama
        stdout.write("\nJudul : ");
        String? Judul = stdin.readLineSync(); //Judul
        stdout.write("\nHarga : ");
        coba_input = stdin.readLineSync();
        int? Harga = int.parse(coba_input!); //Harga
        //Buku Biasa
        stdout.write("\nISBN : ");
        coba_input = stdin.readLineSync();
        int? ISBN = int.parse(coba_input!); //ISBN
        stdout.write("\nPenulis : ");
        String? Penulis = stdin.readLineSync(); // Penulis
        Item.add(BukuBiasa(nomor_id_1, Nama, Judul, Harga, ISBN, Penulis));
        print(Item[counter_Item].Display());
        counter_Item++;
        nomor_id_1++;
      } else if (menu2 == 2) {
        stdout.write("Buku Travel Guide : ");
        // Benda
        //stdout.write("\nID : ");
        // coba_input = stdin.readLineSync();
        // int? ID = int.parse(coba_input!); //ID
        print("ID = $counter_Item");
        stdout.write("\nNama : ");
        String? Nama = stdin.readLineSync(); //Nama
        stdout.write("\nJudul : ");
        String? Judul = stdin.readLineSync(); //Judul
        stdout.write("\nHarga : ");
        coba_input = stdin.readLineSync();
        int? Harga = int.parse(coba_input!); //Harga
        //Buku Biasa
        stdout.write("\nISBN : ");
        coba_input = stdin.readLineSync();
        int? ISBN = int.parse(coba_input!); //ISBN
        stdout.write("\nPenulis : ");
        String? Penulis = stdin.readLineSync(); // Penulis
        //Buku Travel Guide
        stdout.write("\nNegara : ");
        String? Negara = stdin.readLineSync(); // Negara
        Item.add(
            TravelGuide(nomor_id_1, Nama, Judul, Harga, ISBN, Penulis, Negara));
        print(Item[counter_Item].Display());
        counter_Item++;
        nomor_id_1++;
      } else if (menu2 == 3) {
        stdout.write("CD : ");
        // Benda
        //stdout.write("\nID : ");
        // coba_input = stdin.readLineSync();
        // int? ID = int.parse(coba_input!); //ID
        print("ID = $counter_Item");
        stdout.write("\nNama : ");
        String? Nama = stdin.readLineSync(); //Nama
        stdout.write("\nJudul : ");
        String? Judul = stdin.readLineSync(); //Judul
        stdout.write("\nHarga : ");
        coba_input = stdin.readLineSync();
        int? Harga = int.parse(coba_input!); //Harga
        stdout.write("\nArtist : ");
        String? Artist = stdin.readLineSync(); // Artist
        Item.add(CD(nomor_id_1, Nama, Judul, Harga, Artist));
        print(Item[counter_Item].Display());
        counter_Item++;
        nomor_id_1++;
      } else if (menu2 == 0) {
        break;
      }
    } else if (menu == 2) {
    } else if (menu == 3) {
    } else if (menu == 4) {
      stdout.write("Print Semua Data di Lokasi Item Ke - : \n1.Utama\n");
      coba_input = stdin.readLineSync();
      int? LokasiKe = int.parse(coba_input!); //LokasiKe
      if (LokasiKe == 1) {
        if (Item.length != 0) {
          for (int a = 0; a < counter_Item; a++) {
            Item[a].Display();
          }
        } else {
          stdout.write("Data Kosong di Lokasi Item Ke - $LokasiKe");
        }
      } else {
        stdout.write("Tidak Ada Lokasi yang sesuai");
      }
    }
  } while (menu != 0);
}
