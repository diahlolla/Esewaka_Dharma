import 'package:e_sewaka_dharma/Api/Model/DesaModel.dart';
import 'package:e_sewaka_dharma/Api/Model/KecamatanModel.dart';
import 'package:e_sewaka_dharma/Demo%20Regis/DesaList.dart';
import 'package:e_sewaka_dharma/Demo%20Regis/KecamatanList.dart';
import 'package:e_sewaka_dharma/LoginBeranda/Loginpage.dart';
import 'package:e_sewaka_dharma/Widget/button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Kecamatan? kecamatan;
  Kelurahan? kelurahan;
  int id = 0;

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _namalengkap = TextEditingController();
  TextEditingController _nik = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _provinsi = TextEditingController();
  TextEditingController _kabupaten = TextEditingController();
  TextEditingController _kecamatan = TextEditingController();
  TextEditingController _desa = TextEditingController();
  TextEditingController _katasandi = TextEditingController();
  TextEditingController _katasandikonfirm = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _provinsi.text = "Bali";
    _kabupaten.text = "Denpasar";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Form(key: formkey, child: forminputregister()),
                Container(
                    margin: EdgeInsets.only(top: 30, bottom: 50),
                    child: longelevatedbtn(
                        onclick: () {
                          if (formkey.currentState!.validate()) {
                            if (_katasandikonfirm.text == _katasandi.text) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Loginpage(),
                                  ));
                            } else {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: const Text("Peringatan!"),
                                  content: const Text(
                                      "Mohon konfirmasi password sesuai dengan password yang anda masukkan"),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("Oke")),
                                  ],
                                ),
                              );
                            }
                          }
                        },
                        text: "Selanjutnya")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget forminputregister() {
    return Column(
      children: [
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
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              controller: _namalengkap,
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Masukkan Nama Lengkap Anda!' : null,
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
                  hintText: '-- Nama')),
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
            "Email",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              controller: _email,
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Masukkan Email Anda!' : null,
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
                  hintText: '-- Email')),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Provinsi",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              enabled: false,
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
                  hintText: _provinsi.text != ""
                      ? _provinsi.text
                      : "-- Pilih Provinsi")),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Kabupaten",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              enabled: false,
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
                  hintText: _kabupaten.text != ""
                      ? _kabupaten.text
                      : "-- Pilih Kabupaten")),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Kecamatan",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            openlistkecamatan(context);
          },
          child: Container(
            margin: EdgeInsets.only(top: 5),
            child: TextFormField(
                enabled: false,
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
                    hintText: _kecamatan.text != ""
                        ? _kecamatan.text
                        : "-- Pilih Kecamatan")),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Desa",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            if (id != 0) {
              openlistdesa(context);
            } else {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Peringatan!"),
                  content: const Text(
                      "Mohon untuk memilih kecamatan terlebih dahulu!"),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Oke")),
                  ],
                ),
              );
            }
          },
          child: Container(
            margin: EdgeInsets.only(top: 5),
            child: TextFormField(
                enabled: false,
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
                    hintText: _desa.text != "" ? _desa.text : "-- Pilih Desa")),
          ),
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
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Text(
            "Konfirmasi Kata Sandi",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              controller: _katasandikonfirm,
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Konfirmasi Kata Sandi!' : null,
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
                  hintText: '-- Konfirmasi Kata Sandi')),
        ),
      ],
    );
  }

  Future<void> openlistkecamatan(BuildContext context) async {
    final getkecamatan = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ListKecamatan()),
    );
    if (!mounted) return;
    setState(() {
      kecamatan = getkecamatan;
      _kecamatan.text = kecamatan!.nama.toString();
      id = kecamatan!.id!;
      _desa.text = "";
    });
  }

  Future<void> openlistdesa(BuildContext context) async {
    final getdesa = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ListDesa(idkecamatan: id.toString())),
    );
    if (!mounted) return;
    setState(() {
      kelurahan = getdesa;
      _desa.text = kelurahan!.nama.toString();
    });
  }
}
