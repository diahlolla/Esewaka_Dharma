import 'package:flutter/material.dart';

class GantipinScreen extends StatefulWidget {
  GantipinScreen({Key? key}) : super(key: key);

  @override
  State<GantipinScreen> createState() => _GantipinScreenState();
}

class _GantipinScreenState extends State<GantipinScreen> {
  TextEditingController sandibaru = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "Ubah Katasandi",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 118, 77, 29)),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  color: Color.fromARGB(255, 118, 77, 29)))),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kata Sandi Lama",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: TextFormField(
                        validator: (val) =>
                            val!.isEmpty ? 'Mohon Masukkan Kata Sandi!' : null,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(79, 118, 77, 29),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Kata Sandi Baru",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: TextFormField(
                        validator: (val) => val!.isEmpty
                            ? 'Mohon Masukkan Kata Sandi Baru!'
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
                          fillColor: Color.fromARGB(79, 118, 77, 29),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Konfirmasi Kata Sandi",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: TextFormField(
                        validator: (val) => val == sandibaru.text
                            ? 'Kata Sandi Tidak Sesuai!'
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
                          fillColor: Color.fromARGB(79, 118, 77, 29),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 139,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            child: Text("Simpan")),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
