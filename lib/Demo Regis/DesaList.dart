import 'package:e_sewaka_dharma/Api/Apiresponse.dart';
import 'package:e_sewaka_dharma/Api/Model/DesaModel.dart';
import 'package:flutter/material.dart';

class ListDesa extends StatefulWidget {
  ListDesa({Key? key, required this.idkecamatan}) : super(key: key);

  String idkecamatan;

  @override
  State<ListDesa> createState() => _ListDesaState();
}

class _ListDesaState extends State<ListDesa> {
  bool isload = true;
  DesaModel? desaModel;
  void getkecamatandata() async {
    ApiResponse response = await getdesa(widget.idkecamatan);
    if (response.error == null) {
      setState(() {
        desaModel = response.data as DesaModel;
        isload = false;
      });
    }
  }

  @override
  void initState() {
    getkecamatandata();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      appBar: AppBar(
        title: Text("Pilih Desa"),
        automaticallyImplyLeading: false,
      ),
      body: isload
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: desaModel!.kelurahan!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.pop(context, desaModel!.kelurahan![index]);
                  },
                  leading: Icon(Icons.location_on),
                  subtitle: Text("Denpasar-Bali"),
                  title: Text(desaModel!.kelurahan![index].nama.toString()),
                );
              },
            ),
    );
  }
}
