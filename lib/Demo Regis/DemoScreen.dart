import 'package:e_sewaka_dharma/LoginBeranda/BerandaPage.dart';
import 'package:e_sewaka_dharma/LoginBeranda/Loginpage.dart';
import 'package:e_sewaka_dharma/Widget/button.dart';
import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80, bottom: 20),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("Asset/Image/assetlogodemo.png"),
                        fit: BoxFit.cover)),
              ),
              Text(
                "e-Sewaka Dharma",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 118, 77, 29)),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 230,
                child: Text(
                  "Pelayanan Administrasi Publik Kota Denpasar",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Color.fromARGB(255, 118, 77, 29)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                child: Text(
                  "Mempermudah manajemen data administrasi Desa/Kelurahan, mempercepat pelayanan kepada masyararakat yang membutuhkan administrasi Desa/Kelurahan, serta memudahkan pelaporan untuk mengetahui kondisi terkini dari data administrasi Desa/Kelurahan..\nAplikasi e-Sewaka Dharma bertujuan untuk mendekatkan pelayanan Desa/Kelurahan serta mengoptimalkan peran Kepala Lingkungan/Kepala Dusun dalam melayani masyarakat",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                      color: Color.fromARGB(255, 118, 77, 29)),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: elevatedbtndemo(
                            onclick: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BerandaPage(),
                                  ),
                                  (route) => false);
                            },
                            text: "Demo")),
                    elevatedbtndemo(
                        onclick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Loginpage(),
                              ));
                        },
                        text: "Mulai")
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
