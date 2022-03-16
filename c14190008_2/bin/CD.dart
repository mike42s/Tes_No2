import 'benda.dart';

class CD extends Benda {
  String? _artist;
  String? Lokasi = "Utama";

  CD(int? id, String? nama, String? judul, int? harga, String? Jenis,
      String? _artist)
      : super(id, nama, judul, harga, Jenis) {
    this._artist = _artist;
  }
  void Display() {
    print(
        'Id = ${this.id}, Nama = ${this.nama}, Judul = ${this.judul}, Harga = ${this.harga}, Jenis = ${this.Jenis}, Artist = ${this._artist}.');
  }

  void PindahLokasi(String a) {
    this.Lokasi = a;
  }

  void DisplayInr() {
    print('Lokasi = $Lokasi');
  }
}
