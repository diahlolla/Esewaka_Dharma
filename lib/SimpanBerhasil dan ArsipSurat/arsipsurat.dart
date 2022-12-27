import 'package:e_sewaka_dharma/LoginBeranda/BerandaPage.dart';
import 'package:e_sewaka_dharma/Profile%20SplashScreen/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArsipSuratPage extends StatefulWidget {
  ArsipSuratPage({Key? key}) : super(key: key);

  @override
  State<ArsipSuratPage> createState() => _ArsipSuratPageState();
}

class _ArsipSuratPageState extends State<ArsipSuratPage> {
  TextEditingController _tanggal = TextEditingController();
  TextEditingController _jenissurat = TextEditingController();
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
                width: MediaQuery.of(context).size.width,
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
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 118, 77, 29),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Cari Surat",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            validator: (val) =>
                                val!.isEmpty ? 'Masukkan Jenis Surat' : null,
                            controller: _jenissurat,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                icon: Image.asset("Asset/Image/jenissurat.png"),
                                hintText: "Masukkan jenis surat",
                                hintStyle: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              validator: (val) =>
                                  val!.isEmpty ? 'Masukkan Tanggal' : null,
                              controller: _tanggal,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  icon: Image.asset("Asset/Image/icondate.png"),
                                  hintText: "Pilih Tanggal",
                                  hintStyle: TextStyle(color: Colors.white)),
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1000),
                                    lastDate: DateTime(3000));

                                if (pickedDate != null) {
                                  print(pickedDate);
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  print(formattedDate);

                                  setState(() {
                                    _tanggal.text = formattedDate;
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text(
                              "November 2022",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Container(
                                  width: 220,
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Text(
                                          "Surat Kelakuan Baik",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Text(
                                          "12 November 2022 | 19:28:15 WIB",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset("Asset/Image/terkirim.png")
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Container(
                                  width: 220,
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Text(
                                          "Surat Kelakuan Baik",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Text(
                                          "12 November 2022 | 18:28:15 WIB",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset("Asset/Image/gagal.png")
                              ],
                            ),
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
