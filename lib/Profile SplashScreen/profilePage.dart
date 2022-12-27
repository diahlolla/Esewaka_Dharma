import 'package:e_sewaka_dharma/Akun/MyDoc.dart';
import 'package:e_sewaka_dharma/Akun/Profilelengkap.dart';
import 'package:e_sewaka_dharma/Akun/gantipin.dart';
import 'package:e_sewaka_dharma/Demo%20Regis/DemoScreen.dart';
import 'package:e_sewaka_dharma/LoginBeranda/BerandaPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 118, 77, 29),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Profilelengkap(),
                                  ));
                            },
                            leading: Image.asset("Asset/Image/accounticon.png"),
                            title: Text("Lihat Profile Lengkap",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mydoc(),
                                  ));
                            },
                            leading: Image.asset("Asset/Image/doicon.png"),
                            title: Text("Dokumen Saya",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          ListTile(
                            leading: Image.asset("Asset/Image/unduhicon.png"),
                            title: Text("Unduh Salinan Dokumen",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GantipinScreen(),
                                  ));
                            },
                            leading:
                                Image.asset("Asset/Image/gantipinicon.png"),
                            title: Text("Ganti Pin",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DemoScreen(),
                                  ),
                                  (route) => false);
                            },
                            leading: Image.asset("Asset/Image/logouticon.png"),
                            title: Text("Keluar",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
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
                onTap: () {},
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
