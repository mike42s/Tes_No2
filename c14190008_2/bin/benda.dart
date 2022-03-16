import 'dart:ffi';
import 'dart:io';

class Benda {
  int? _id;
  String? _nama;
  String? _judul;
  int? _harga;
  String? _Jenis;

  Benda(int? _id, String? _nama, String? _judul, int? _harga, String? _Jenis) {
    this._id = _id;
    this._nama = _nama;
    this._judul = _judul;
    this._harga = _harga;
    this._Jenis = _Jenis;
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

  set jenis(String a) {
    this._Jenis = a;
  }

  String get judul => this._judul!;
  String get nama => this._nama!;
  int get harga => this._harga!;
  int get id => this._id!;
  String get Jenis => this._Jenis!;

  void Display() {
    print(
        'Id = ${this._id}, Nama = ${this._nama}, Judul = ${this._judul}, Harga = ${this._harga}. - Jenis = ${this.Jenis}');
  }

  void getNama() {
    stdout.write("$_nama");
  }
}
