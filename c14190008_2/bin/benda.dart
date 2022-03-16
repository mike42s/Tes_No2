import 'dart:ffi';

class Benda {
  int? _id;
  String? _nama;
  String? _judul;
  int? _harga;

  Benda(int? _id, String? _nama, String? _judul, int? _harga) {
    this._id = _id;
    this._nama = _nama;
    this._judul = _judul;
    this._harga = _harga;
  }
  set nama(String a) {
    _nama = a;
  }

  set id(int a) {
    _id = a;
  }

  set judul(String a) {
    this._judul = a;
  }

  set harga(int a) {
    _harga = a;
  }

  String get judul => this._judul!;
  String get nama => this._nama!;
  int get harga => this._harga!;
  int get id => this._id!;

  void Display() {
    print(
        'Id = ${this._id}, Nama = ${this._nama}, Judul = ${this._judul}, Harga = ${this._harga}.');
  }
}
