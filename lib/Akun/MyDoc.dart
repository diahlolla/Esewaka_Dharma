import 'package:flutter/material.dart';

class Mydoc extends StatefulWidget {
  Mydoc({Key? key}) : super(key: key);

  @override
  State<Mydoc> createState() => _MydocState();
}

class _MydocState extends State<Mydoc> {
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
            "Dokumen Saya",
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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Center(
                  child: Container(
                    height: 43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 215, 203, 189)),
                    child: Center(
                      child: Text("1"),
                    ),
                  ),
                )),
                Expanded(
                    flex: 3,
                    child: Center(
                      child: Container(
                        width: 181,
                        height: 43,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 215, 203, 189)),
                        child: Center(
                          child: Text("Januari"),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        width: 76,
                        height: 43,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 215, 203, 189)),
                        child: Center(
                          child: Text("2023"),
                        ),
                      ),
                    )),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    "Surat Kelakuan Baik",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("12 November 2022 | 19:28:15 WIB"),
                  trailing: Container(
                    height: 43,
                    width: 76,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 215, 203, 189),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text(
                          "Unduh",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 118, 77, 29)),
                        )),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
