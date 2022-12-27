import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Profilelengkap extends StatefulWidget {
  const Profilelengkap({Key? key}) : super(key: key);

  @override
  State<Profilelengkap> createState() => _ProfilelengkapState();
}

class _ProfilelengkapState extends State<Profilelengkap> {
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
            "Profile",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 118, 77, 29)),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  color: Color.fromARGB(255, 118, 77, 29)))),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 215, 203, 189),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Foto",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 80, 15, 15)),
                              ),
                              Text(
                                "Tambahkan foto  untuk mempersonalis- asikan akun Anda",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 80, 15, 15)),
                              ),
                            ],
                          )),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 80, 15, 15),
                                borderRadius: BorderRadius.circular(100)),
                            width: 37,
                            height: 37,
                          ),
                        ],
                      ))
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 80, 15, 15),
                    thickness: 1.2,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        labelText: "Nama",
                        labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 80, 15, 15))),
                  ),
                  TextFormField(
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
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate);

                        setState(() {});
                      } else {
                        print("Date is not selected");
                      }
                    },
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        labelText: "Tanggal Lahir",
                        labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 80, 15, 15))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        labelText: "Gender",
                        labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 80, 15, 15))),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 215, 203, 189),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 25),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 80, 15, 15))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 80, 15, 15)),
                        ),
                        labelText: "Kontak",
                        labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 80, 15, 15))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
