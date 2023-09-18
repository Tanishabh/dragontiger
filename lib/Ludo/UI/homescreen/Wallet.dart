import 'package:dragontiger/Ludo/UI/homescreen/Addamount.dart';
import 'package:dragontiger/Updown7/UI/constant/color.dart';
import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mywallet extends StatefulWidget {
  const Mywallet({super.key});

  @override
  State<Mywallet> createState() => _MywalletState();
}

class _MywalletState extends State<Mywallet> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return InkWell(
      child: CircleAvatar(
      radius: heights /25,
      backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
      backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
      child: CircleAvatar(
        radius: heights /32,
        backgroundColor: Colors.transparent,
        child: Image.asset(AppAssetsU.buttonsWalletimage),
      ),
    ),
      onTap: (){
        showDialog(context: context,
            builder: (ctx) => AlertDialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              content: Builder(builder: (context){
                return Container(
                  height: heights/0.8,
                  width: heights/1.9,
                  decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundWalletone)))),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          child: Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/20),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Image.asset(AppAssetsU.backgroundWallettwo,height: heights/2,),
                      Positioned(
                        top: heights/4.5,
                          left: heights/8,
                          child: Text("MAIN BALANCE", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights /35))),
                      ),
                      Positioned(
                        top: heights/3.7,
                          left: heights/8,
                          child:  Row(
                            children: [
                              Text("₹", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 25))),
                              Padding(
                                padding: EdgeInsets.only(left:heights/15),
                                child: TextButton(
                                  child: Image.asset(AppAssetsU.buttonsAddamount, height: heights/25),
                                  onPressed: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=> recharge())
                                    );
                                    },
                                ),
                              )
                            ],
                          ),
                      ),
                      Positioned(
                        top: heights/2.6,
                          left: heights/8,
                          child: Text("WINNING BALANCE", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights /35))),
                      ),
                      Positioned(
                        top: heights/2.3,
                          left: heights/8,
                          child: Row(
                                children: [
                                  Text("₹", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 25))),
                                  Padding(
                                    padding: EdgeInsets.only(left:heights/15),
                                    child: TextButton(
                                      child: Image.asset(AppAssetsU.buttonsWithdraw,height: heights/25,),
                                      onPressed: (){

                                      },
                                    ),
                                  )
                                ],
                              ),
                      ),
                      Positioned(
                        top: heights/1.8,
                          left: heights/8,
                          child:  Text("BONUS BALANCE*", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 35))),
                      ),
                      Positioned(
                        bottom: heights/3.6,
                          left: heights/8,
                          child: Row(
                                children: [
                                  Text("₹", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 25))),
                                  Padding(
                                    padding: EdgeInsets.only(left:heights/20),
                                    child: Text("While joining a game,\n5% will be used from your\nBONUS BALANCE", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights /60))),
                                  ),
                                ],
                              ),
                      ),
                      Positioned(
                        bottom: heights/6,
                          left: heights/6,
                          child: TextButton(
                              child: Image.asset(AppAssetsU.buttonsTransaction, height: heights/20,),
                              onPressed: (){},
                            ),
                      ),
                      Positioned(
                        bottom: heights/10,
                          left: heights/6,
                          child: TextButton(
                          child: Image.asset(AppAssetsU.buttonsTds, height: heights/20,),
                          onPressed: (){},
                        ),
                      )
                      // Padding(
                      //   padding: EdgeInsets.all(heights/9.3),
                      //   child: Container(
                      //     height: heights/2.4,
                      //     decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundWallettwo)))),
                      //   ),
                      // ),
                      // Text("MAIN BALANCE", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights /35))),
                      // Padding(
                      //   padding: EdgeInsets.all(heights/30),
                      //   child: Row(
                      //     children: [
                      //       Text("₹", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 25))),
                      //       Padding(
                      //         padding: EdgeInsets.only(left:heights/30),
                      //         child: TextButton(
                      //           child: Image.asset(AppAssetsU.buttonsAddamount, height: heights/20,),
                      //           onPressed: (){
                      //
                      //           },
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(right:heights/7),
                      //   child: Text("WINNING BALANCE", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights /35))),
                      // ),
                      // Padding(
                      //   padding:  EdgeInsets.all(heights/30),
                      //   child: Row(
                      //     children: [
                      //       Text("₹", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 25))),
                      //       Padding(
                      //         padding: EdgeInsets.only(left:heights/20),
                      //         child: TextButton(
                      //           child: Image.asset(AppAssetsU.buttonsWithdraw,height: heights/20,),
                      //           onPressed: (){
                      //
                      //           },
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding:EdgeInsets.only(right:heights/7),
                      //   child: Text("BONUS BALANCE*", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 35))),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(heights/30),
                      //   child: Row(
                      //     children: [
                      //       Text("₹", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights / 25))),
                      //       Padding(
                      //         padding: EdgeInsets.only(left:heights/20),
                      //         child: Text("While joining a game,\n5% will be used from your\nBONUS BALANCE", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: heights /50))),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // TextButton(
                      //   child: Image.asset(AppAssetsU.buttonsTransaction, height: heights/20,),
                      //   onPressed: (){
                      //
                      //   },
                      // ),
                      // TextButton(
                      //   child: Image.asset(AppAssetsU.buttonsTds, height: heights/20,),
                      //   onPressed: (){
                      //
                      //   },
                      // ),
                      ],
                  )
                );
              }
              ),


            )
        );

      },
    );
  }
}
