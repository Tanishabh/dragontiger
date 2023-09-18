import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myrefer extends StatefulWidget {
  const Myrefer({super.key});

  @override
  State<Myrefer> createState() => _MyreferState();
}

class _MyreferState extends State<Myrefer> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery
        .of(context)
        .size
        .height;
    final widths = heights * 2.1;
    return AlertDialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        content: Builder(builder: (context) {
          return Container(
            height: heights/0.9,
            width: heights/1.9,
            decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundWalletone)),fit: BoxFit.fill)),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Image.asset(
                          AppAssetsU.buttonsBtnClose2, height: heights / 20),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(heights/18),
                  child: Image.asset(
                      AppAssetsU.buttonsReferandearn, height: heights / 15),
                ),
                // SizedBox(height: heights / 20),
                Image.asset(
                  AppAssetsU.backgroundBlackpageblue, height: heights / 10,width: heights/1.2,),
                SizedBox(height: heights / 25,),
                Text("REFERRAL CODE", style: GoogleFonts.playfairDisplay(
                    textStyle: TextStyle(color: Colors.yellow))),
                Image.asset(AppAssetsU.backgroundIcJackpotStripPurple,
                    height: heights / 30),
                SizedBox(height: heights / 20),
                Image.asset(
                    AppAssetsU.buttonsReferralhistory, height: heights / 20),
                SizedBox(height: heights / 30),
                Image.asset(AppAssetsU.buttonsInvite, height: heights / 20),
              ],
            ),
          );
        })
    );
  }
}

