import 'benda.dart';

class BukuBiasa extends Benda {
  int? _ISBN;
  String? _Penulis;
  BukuBiasa(int? id, String? nama, String? judul, int? harga, int? ISBN,
      String? Penulis)
      : super(id, nama, judul, harga) {
    this._ISBN = ISBN;
    this._Penulis = Penulis;
  }

  set ISBN(int a) {
    this._ISBN = a;
  }

  set Penulis(String a) {
    _Penulis = a;
  }

  String get Penulis => this._Penulis!;
  int get ISBN => this._ISBN!;
  void Display() {
    print(
        'Id = ${this.id}, Nama = ${this.nama}, Judul = ${this.judul}, Harga = ${this.harga}, ISBN = $ISBN, = ${this.Penulis}.');
  }
}