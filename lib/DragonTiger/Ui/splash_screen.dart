import 'dart:async';

import 'package:dragontiger/DragonTiger/Ui/HomeScreen/homescreen.dart';
import 'package:dragontiger/DragonTiger/Ui/constant/images.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
    ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => homescreen() )));
  }


  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
      ),
         body: Center(child: Image.asset(AppAssets.backgroundDragonTigerRemovebgPreview)),


    );
  }
}

