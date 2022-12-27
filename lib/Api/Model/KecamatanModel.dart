import 'dart:convert';

import 'package:e_sewaka_dharma/Api/Apiresponse.dart';
import 'package:http/http.dart' as http;

class KecamatanModel {
  List<Kecamatan>? kecamatan;

  KecamatanModel({this.kecamatan});

  KecamatanModel.fromJson(Map<String, dynamic> json) {
    if (json['kecamatan'] != null) {
      kecamatan = <Kecamatan>[];
      json['kecamatan'].forEach((v) {
        kecamatan!.add(new Kecamatan.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.kecamatan != null) {
      data['kecamatan'] = this.kecamatan!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kecamatan {
  int? id;
  String? idKota;
  String? nama;

  Kecamatan({this.id, this.idKota, this.nama});

  Kecamatan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idKota = json['id_kota'];
    nama = json['nama'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_kota'] = this.idKota;
    data['nama'] = this.nama;
    return data;
  }
}

//GetData
Future<ApiResponse> getkecamatan() async {
  ApiResponse apiresponse = ApiResponse();
  try {
    final response = await http.get(Uri.parse(
        "https://dev.farizdotid.com/api/daerahindonesia/kecamatan?id_kota=5171"));

    switch (response.statusCode) {
      case 200:
        apiresponse.data = KecamatanModel.fromJson(jsonDecode(response.body));
        break;
      default:
        apiresponse.error = "Ada Masalah, Coba Lagi";
        break;
    }
  } catch (e) {
    apiresponse.error = "Server Error";
  }
  return apiresponse;
}
