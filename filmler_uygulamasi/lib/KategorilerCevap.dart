import 'package:filmler_uygulamasi/Kategoriler.dart';

class KategorilerCevap{
  int success;
  List<Kategoriler> kategorilerListesi;

  KategorilerCevap(this.success, this.kategorilerListesi);

  factory KategorilerCevap.fromJson(Map<String,dynamic> json){
    var jsonArray = json["kategoriler"] as List;
    List<Kategoriler> kategorilerListesi = jsonArray.map((jsonArrayNesnesi) => Kategoriler.fromJson(jsonArrayNesnesi)).toList();
    return KategorilerCevap(json["success"] as int,kategorilerListesi);
  }
}