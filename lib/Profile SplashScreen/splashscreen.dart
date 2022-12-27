import 'package:e_sewaka_dharma/Demo%20Regis/DemoScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timerSS();
  }

  //timer/
  timerSS() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return DemoScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 118, 77, 29),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                "Asset/Image/assetsplash.png",
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Text(
                "e-Sewaka Dharma ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            )
          ],
        ));
  }
}
