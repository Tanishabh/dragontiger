import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytour extends StatefulWidget {
  const Mytour({super.key});

  @override
  State<Mytour> createState() => _MytourState();
}

class _MytourState extends State<Mytour> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return AlertDialog(
      contentPadding:EdgeInsets.zero ,
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      content: Builder(builder: (context){
        return Container(
            height: heights/0.8,
            width: heights/1.9,
            decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundBgall)))),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Image.asset(
                          AppAssetsU.buttonsBtnClose2, height: heights/20),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                ),
                Container(
                  height: heights/10,
                    width: heights/2.2,
                    color: Colors.indigo[900],
                    child: Center(child: Text("Comming Soon", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white))))
                ),

              ],
            )
        );
      }),

    );
  }
  }

