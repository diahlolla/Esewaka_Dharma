import 'dart:ui';

import 'package:e_sewaka_dharma/DaftarSurat%20BiodataSurat/daftarsuratpage.dart';
import 'package:e_sewaka_dharma/Profile%20SplashScreen/profilePage.dart';
import 'package:e_sewaka_dharma/SimpanBerhasil%20dan%20ArsipSurat/arsipsurat.dart';
import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              getheader(),
              Container(
                margin: EdgeInsets.only(top: 85),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 118, 77, 29),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                              child:
                                  Image.asset("Asset/Image/denpasarlogo.png")),
                          Container(
                            width: 200,
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Desa Cau",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Kecamatan Marga",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Kabupaten Tabanan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 50),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Layanan Persuratan",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DaftarSuratPage(),
                                  ));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              height: 140,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          width: 50,
                                          height: 50,
                                          child: Image.asset(
                                              "Asset/Image/surat.png")),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text("Ajukan Surat")],
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ArsipSuratPage(),
                                  ));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              height: 140,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          width: 50,
                                          height: 50,
                                          child: Image.asset(
                                              "Asset/Image/Bookmarks.png")),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text("Arsip Surat")],
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 201, 201, 201),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getheader() {
    return Container(
      color: Color.fromARGB(255, 118, 77, 29),
      height: 120,
      padding: EdgeInsets.all(20),
      child: //header
          Row(
        children: [
          Expanded(
            flex: 5,
            child: InkWell(
              onTap: () {
                ModalRoute.of(context)?.canPop ?? false
                    ? Navigator.pop(context)
                    : null;
              },
              child: Container(
                width: 250,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Selamat Datang,",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Ni Luh Putu Sintya B.",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, bottom: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Asset/Image/iconprofile.png"))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
