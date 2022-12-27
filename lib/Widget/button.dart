import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget elevatedbtndemo({required Function()? onclick, required String text}) {
  return Container(
    width: 120,
    height: 50,
    child: ElevatedButton(
      onPressed: onclick,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}

Widget longelevatedbtn({required Function()? onclick, required String text}) {
  return Container(
    width: 320,
    height: 50,
    child: ElevatedButton(
      onPressed: onclick,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}
