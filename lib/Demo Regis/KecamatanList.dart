import 'dart:convert';

import 'package:e_sewaka_dharma/Api/Apiresponse.dart';
import 'package:e_sewaka_dharma/Api/Model/KecamatanModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListKecamatan extends StatefulWidget {
  ListKecamatan({Key? key}) : super(key: key);

  @override
  State<ListKecamatan> createState() => _ListKecamatanState();
}

class _ListKecamatanState extends State<ListKecamatan> {
  bool isload = true;
  KecamatanModel? kecamatanModel;
  void getkecamatandata() async {
    ApiResponse response = await getkecamatan();
    if (response.error == null) {
      setState(() {
        kecamatanModel = response.data as KecamatanModel;
        isload = false;
      });
    }
  }

  @override
  void initState() {
    getkecamatandata();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      appBar: AppBar(
        title: Text("Pilih Kecamatan"),
        automaticallyImplyLeading: false,
      ),
      body: isload
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: kecamatanModel!.kecamatan!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.pop(context, kecamatanModel!.kecamatan![index]);
                  },
                  leading: Icon(Icons.location_on),
                  subtitle: Text("Denpasar-Bali"),
                  title:
                      Text(kecamatanModel!.kecamatan![index].nama.toString()),
                );
              },
            ),
    );
  }
}
