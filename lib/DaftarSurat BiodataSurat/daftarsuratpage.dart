import 'package:e_sewaka_dharma/DaftarSurat%20BiodataSurat/biodatasurat.dart';
import 'package:e_sewaka_dharma/LoginBeranda/BerandaPage.dart';
import 'package:e_sewaka_dharma/Profile%20SplashScreen/profilePage.dart';
import 'package:flutter/material.dart';

class DaftarSuratPage extends StatefulWidget {
  DaftarSuratPage({Key? key}) : super(key: key);

  @override
  State<DaftarSuratPage> createState() => _DaftarSuratPageState();
}

class _DaftarSuratPageState extends State<DaftarSuratPage> {
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
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: GridView.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Biodatasurat(),
                                  ));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/People.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Kelakuan Baik",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/people2.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Keterangan Belum Menikah",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/job.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                "Keterangan Belum Bekerja",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/loveicon.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                "Keterangan Kawin",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/human.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                "Kematian",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/cars.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                "Keterangan Perjalanan",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/peoplee.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                "Keterangan Usaha",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Space-----------------------------------------------
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 206, 206, 206),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          child: Image.asset(
                                              "Asset/Image/fingerprint.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Color.fromARGB(
                                                255, 118, 77, 29),
                                          ),
                                          child: Center(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                "Surat Lainnya",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
