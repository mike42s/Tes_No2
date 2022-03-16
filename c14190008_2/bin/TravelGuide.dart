import 'buku.dart';

class TravelGuide extends BukuBiasa {
  String? _Negara;

  TravelGuide(int? id, String? nama, String? judul, int? harga, String? Jenis,
      int? ISBN, String? Penulis, String? _Negara)
      : super(id, nama, judul, harga, Jenis, ISBN, Penulis) {
    this._Negara = _Negara;
  }

  void Display() {
    print(
        'Id = ${this.id}, Nama = ${this.nama}, Judul = ${this.judul}, Harga = ${this.harga}, Jenis = ${this.Jenis}, ISBN = $ISBN, = ${this.Penulis}, Negara = ${this._Negara}.');
  }
}
