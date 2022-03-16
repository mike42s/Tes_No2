import 'dart:io';
import 'TravelGuide.dart';
import 'benda.dart';
import 'buku.dart';
import 'cd.dart';

void main(List<String> arguments) {
  List Item = new List.empty(growable: true);
  Item.add(Benda(01, "Hai", "Mengapa?", 30000));
  Item.add(BukuBiasa(02, "halo", "Kenapa", 30000, 40000, "Pak GG"));
  Item.add(
      TravelGuide(03, "hehe", "abc", 40000, 50000, "Siapapun", "Indonesia"));
  Item.add(CD(04, "Kiana", "Senang", 50000, "Kena"));
  print(Item[0].Display());
  print(Item[1].Display());
  print(Item[2].Display());
  print(Item[3].Display());
}
