import 'dart:convert';
import 'dart:ffi';

import 'package:e_sewaka_dharma/Api/Apiresponse.dart';
import 'package:http/http.dart' as http;

class DesaModel {
  List<Kelurahan>? kelurahan;

  DesaModel({this.kelurahan});

  DesaModel.fromJson(Map<String, dynamic> json) {
    if (json['kelurahan'] != null) {
      kelurahan = <Kelurahan>[];
      json['kelurahan'].forEach((v) {
        kelurahan!.add(new Kelurahan.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.kelurahan != null) {
      data['kelurahan'] = this.kelurahan!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kelurahan {
  int? id;
  String? idKecamatan;
  String? nama;

  Kelurahan({this.id, this.idKecamatan, this.nama});

  Kelurahan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idKecamatan = json['id_kecamatan'];
    nama = json['nama'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_kecamatan'] = this.idKecamatan;
    data['nama'] = this.nama;
    return data;
  }
}

//GetData
Future<ApiResponse> getdesa(String? idkecamatan) async {
  ApiResponse apiresponse = ApiResponse();
  try {
    final response = await http.get(Uri.parse(
        "https://dev.farizdotid.com/api/daerahindonesia/kelurahan?id_kecamatan=" +
            idkecamatan.toString()));

    switch (response.statusCode) {
      case 200:
        apiresponse.data = DesaModel.fromJson(jsonDecode(response.body));
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
