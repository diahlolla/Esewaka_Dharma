import 'package:e_sewaka_dharma/LoginBeranda/BerandaPage.dart';
import 'package:e_sewaka_dharma/Profile%20SplashScreen/profilePage.dart';
import 'package:e_sewaka_dharma/SimpanBerhasil%20dan%20ArsipSurat/simpanberhasil.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Biodatasurat extends StatefulWidget {
  Biodatasurat({Key? key}) : super(key: key);

  @override
  State<Biodatasurat> createState() => _BiodatasuratState();
}

class _BiodatasuratState extends State<Biodatasurat> {
  FilePickerResult? result;

  String kk = "";
  String ktp = "";

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
                      margin: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 118, 77, 29),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Kelakuan Baik",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Form(child: getform()),
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

  Widget getform() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Kelurahan/Desa",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Masukkan Kelurahan/Desa!' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Kepala Dusun / Lingkungan",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              validator: (val) => val!.isEmpty
                  ? 'Mohon Masukkan Kepala Dusun / Lingkungan!'
                  : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Tanggal Surat",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Masukkan Tanggal Surat !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "NIK",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              validator: (val) => val!.isEmpty ? 'Mohon Masukkan NIK !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "No. KK",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              validator: (val) => val!.isEmpty ? 'No. KK !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Nama Lengkap",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              validator: (val) => val!.isEmpty ? 'Nama Lengkap !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Alamat Lengkap",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              validator: (val) => val!.isEmpty ? 'Alamat Lengkap !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Keperluan Jenis Surat Yang Di Pilih",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              validator: (val) =>
                  val!.isEmpty ? 'Keperluan Jenis Surat Yang Di Pilih !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "No. HP ",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              keyboardType: TextInputType.phone,
              validator: (val) => val!.isEmpty ? 'No. HP !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Email",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (val) => val!.isEmpty ? 'Email !' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 217, 217),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Foto  / Scan KK ",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(right: 10),
                width: 110,
                child: ElevatedButton(
                    onPressed: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();

                      if (result != null) {
                        PlatformFile file = result.files.first;
                        setState(() {
                          kk = file.name.toString();
                        });
                      } else {
                        print("No file selected");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text("Browse"))),
            Container(
                width: 200,
                child: Text(kk != "" ? kk : "Tidak ada file yang dipilih"))
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Foto  / Scan KTP ",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(right: 10),
                width: 110,
                child: ElevatedButton(
                    onPressed: () async {
                      FilePickerResult? ktpresult =
                          await FilePicker.platform.pickFiles();

                      if (ktpresult != null) {
                        PlatformFile file = ktpresult.files.first;
                        setState(() {
                          ktp = file.name.toString();
                        });
                      } else {
                        print("No file selected");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text("Browse"))),
            Container(
                width: 200,
                child: Text(ktp != "" ? ktp : "Tidak ada file yang dipilih"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 110,
              height: 50,
              child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SimpanBerhasil(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Text("Simpan")),
            ),
          ],
        )
      ],
    );
  }
}
