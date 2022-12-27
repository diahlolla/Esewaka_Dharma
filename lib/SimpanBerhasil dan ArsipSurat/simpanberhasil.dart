import 'package:e_sewaka_dharma/LoginBeranda/BerandaPage.dart';
import 'package:flutter/material.dart';

class SimpanBerhasil extends StatefulWidget {
  SimpanBerhasil({Key? key}) : super(key: key);

  @override
  State<SimpanBerhasil> createState() => _SimpanBerhasilState();
}

class _SimpanBerhasilState extends State<SimpanBerhasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 118, 77, 29),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        child: Image.asset("Asset/Image/denpasarlogo.png")),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, bottom: 90),
                  width: 200,
                  child: Text(
                    "Daftar Permohonan Surat Anda Berhasil di Kirimkan",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BerandaPage(),
                              ),
                              (route) => false);
                        },
                        child: Text(
                          "Oke",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
