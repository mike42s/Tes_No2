import 'benda.dart';

class CD extends Benda {
  String? _artist;

  CD(int? id, String? nama, String? judul, int? harga, String? _artist)
      : super(id, nama, judul, harga) {
    this._artist = _artist;
  }

  void Display() {
    print(
        'Id = ${this.id}, Nama = ${this.nama}, Judul = ${this.judul}, Harga = ${this.harga}, Artist = ${this._artist}.');
  }
}
