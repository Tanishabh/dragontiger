import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';

import '../../main_screen.dart';

class Myclassic extends StatefulWidget {
  const Myclassic({super.key});

  @override
  State<Myclassic> createState() => _MyclassicState();
}

class _MyclassicState extends State<Myclassic> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return InkWell(
        child:
            Image.asset(AppAssetsU.buttonsFrontbuttonthree, width: heights / 5),
        onTap: () {

          Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
        //   showDialog(
        //       context: context,
        //       builder: (ctx) => AlertDialog(
        //             backgroundColor: Colors.transparent,
        //             contentPadding: EdgeInsets.zero,
        //             insetPadding: EdgeInsets.zero,
        //             content: Builder(builder: (context) {
        //               return Container(
        //                   // height: heights/0.8,
        //                   // width: heights/1.9,
        //                   decoration: BoxDecoration(
        //                       image: DecorationImage(
        //                           image: AssetImage(
        //                               AppAssetsU.backgroundWalletone),
        //                           fit: BoxFit.cover)),
        //                   child: Stack(
        //                     children: [],
        //                   ));
        //             }),
        //           ));
        });
  }
}
