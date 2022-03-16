import 'dart:io';
import 'TravelGuide.dart';
import 'benda.dart';
import 'buku.dart';
import 'cd.dart';

void main(List<String> arguments) {
  List Item = new List.empty(growable: true);
  List Item_Ditempatlain = new List.empty();
  int nomor_id_2 = 1;
  int counter_Item2 = 0;
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
        "1.Menambahkan Barang\n2.Menampilkan Barang\n3.Meletakkan Barang pada lokasi tertentu\n4.Menampilkan seluruh barang pada lokasi tertentu\n5. Fungsi Tambahan 1\n6. Fungsi Tambahan 2\n0.Exit\n");
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
        Item.add(BukuBiasa(
            nomor_id_1, Nama, Judul, Harga, "Buku Biasa", ISBN, Penulis));
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
        Item.add(TravelGuide(nomor_id_1, Nama, Judul, Harga,
            "Buku Travel Guide", ISBN, Penulis, Negara));
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
        Item.add(CD(nomor_id_1, Nama, Judul, Harga, "CD", Artist));
        print(Item[counter_Item].Display());
        counter_Item++;
        nomor_id_1++;
      } else if (menu2 == 0) {
        break;
      }
    } else if (menu == 2) {
      if (Item.length >= 1) {
        for (int a = 0; a < counter_Item; a++) {
          print(' ID - ${a + 1}, Nama : ${Item[a].nama}');
        }
        stdout.write("Menampilkan Sebuah Barang, ID ke - ");
        coba_input = stdin.readLineSync();
        int? IDke = int.parse(coba_input!);
        IDke--;
        bool x = false;
        if (Item.length >= 0 && IDke >= 0) {
          for (int a = 0; a < counter_Item; a++) {
            if (a == IDke) {
              Item[a].Display();
              x = true;
            }
          }
        }
        if (!x) {
          stdout.write("ID tidak ditemukan\n");
        }
      } else {
        stdout.write("Data Kosong di Lokasi Utama\n");
      }
    } else if (menu == 3) {
      stdout.write("Barang yang ingin dipindah ke Lokasi Tertentu\n");
      for (int a = 0; a < counter_Item; a++) {
        print(' ID - ${a + 1}, Nama : ${Item[a].nama}');
      }
      coba_input = stdin.readLineSync();
      int? LokasiKe = int.parse(coba_input!); //LokasiKe
      LokasiKe--;
      stdout.write(
          "Lokasi yang baru : \n1.Halaman Belakang\n2.Halaman Tengah\n3.Utama\n");
      coba_input = stdin.readLineSync();
      int? go = int.parse(coba_input!); //LokasiKe
      String? pilihan;
      if (go == 1) {
        pilihan = "Halaman Belakang";
      } else if (go == 2) {
        pilihan = "Halaman Tengah";
      } else if (go == 3) {
        pilihan = "Utama";
      }

      Item[LokasiKe].PindahLokasi(pilihan);
      print('Lokasi = ${Item[LokasiKe].DisplayInr()}');
    } else if (menu == 4) {
      stdout.write(
          "Print Semua Data di Lokasi Item Ke - : \n1.Utama\n2.Halaman Tengah \n3.Halaman Belakang\n");

      //print(Item[0].Lokasi);
      coba_input = stdin.readLineSync();
      int? LokasiKe = int.parse(coba_input!); //LokasiKe
      if (LokasiKe == 1) {
        if (Item.length >= 1) {
          for (int a = 0; a < counter_Item; a++) {
            String? j = Item[a].Lokasi;
            if (j == "Utama") {
              Item[a].Display();
            }
          }
        } else {
          stdout.write("Data Kosong di Lokasi Item Ke - $LokasiKe");
          stdout.write("\n");
        }
      } else if (LokasiKe == 2) {
        if (Item.length >= 1) {
          for (int a = 0; a < counter_Item; a++) {
            String? j = Item[a].Lokasi;
            if (j == "Halaman Tengah") {
              Item[a].Display();
            }
          }
        } else {
          stdout.write("Data Kosong di Lokasi Item Ke - $LokasiKe");
          stdout.write("\n");
        }
      } else if (LokasiKe == 3) {
        if (Item.length >= 1) {
          for (int a = 0; a < counter_Item; a++) {
            String? j = Item[a].Lokasi;
            if (j == "Halaman Belakang") {
              Item[a].Display();
            }
          }
        } else {
          stdout.write("Data Kosong di Lokasi Item Ke - $LokasiKe");
          stdout.write("\n");
        }
      } else {
        stdout.write("Tidak Ada Lokasi yang sesuai\n");
      }
    } else if (menu == 5) {
      stdout.write("N Data Barang Pertama : ");
      coba_input = stdin.readLineSync();
      int a = int.parse(coba_input!);
      stdout.write("Batasan Harga (Bawah) : ");
      coba_input = stdin.readLineSync();
      int b = int.parse(coba_input!);
      stdout.write("Batasan Harga (Atas) : ");
      coba_input = stdin.readLineSync();
      int c = int.parse(coba_input!);
      for (int i = 0; i < Item.length; i++) {
        //print('${Item[i].harga}');
        if (a > i && b < Item[i].harga && Item[i].harga < c) {
          print(
              "$a data barang pertama yang memiliki kisaran harga antara $b sampai dengan $c");
          stdout.write("\n");
          stdout.write("${Item[i].Display()}");
          stdout.write("\n");
        }
      }
    } else if (menu == 6) {
      String input;
      String G;
      stdout.write(
          "Title yang ingin dicari : "); //Asumsi Search data menggunakan judul dengan menggunakan 1 huruf saja dan yang sama
      input = stdin.readLineSync()!;
      //print(input.length);
      int k = 0;
      for (int i = 0; i < Item.length; i++) {
        k = 0;
        G = Item[i].judul;
        int a = G.length;
        //print('$a - $G');
        for (int j = 0; j < a; j++) {
          if (input == Item[i].judul[j]) {
            // print('${Item[i].Display()}');
            k++;
          }
        }
        if (k - 1 <= input.length) {
          stdout.write('$G');
          stdout.write('\n');
        }
      }
      // final asss = <int>{};
      // for (int a = 0; a < input!.length; a++) {
      //   G = input[a];
      //   for (int j = 0; j < Item[a].nama.length; j++) {
      //     if (G == Item[a].nama[j] && asss.last != a) {
      //       asss.add(a);
      //     }
      //   }
      // }
      // for (int i = 0; i < asss.length; i++) {
      //   int k = asss.elementAt(i);
      //   print('i. ${Item[k].Display()}');
      // }
    }
  } while (menu != 0);
}
