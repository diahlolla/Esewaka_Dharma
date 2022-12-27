import 'package:e_sewaka_dharma/Demo%20Regis/Registerpage.dart';
import 'package:e_sewaka_dharma/LoginBeranda/BerandaPage.dart';
import 'package:e_sewaka_dharma/Widget/button.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _nik = TextEditingController();
  TextEditingController _katasandi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Form(key: formkey, child: forminputlogin()),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      child: longelevatedbtn(
                          onclick: () {
                            if (formkey.currentState!.validate()) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BerandaPage(),
                                  ),
                                  (route) => false);
                            }
                          },
                          text: "Masuk")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Belum punya akun ?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ));
                          },
                          child: Text(
                            "Daftar",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget forminputlogin() {
    return Column(
      children: [
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
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              controller: _nik,
              validator: (val) => val!.isEmpty ? 'Mohon Masukkan NIK!' : null,
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
                  hintText: '-- Nomor Induk Kependudukan')),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Kata Sandi",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              controller: _katasandi,
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
                  fillColor: Color.fromARGB(255, 217, 217, 217),
                  hintText: '-- Kata Sandi')),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {},
              child: Text(
                "Lupa Pin ?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 108, 108, 108)),
              )),
        )
      ],
    );
  }
}
