// import 'dart:html';
import 'dart:async';

import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constant/color.dart';

class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {

  void initState() {
    // TODO: implement initState
    super.initState();
    StartTimer();
  }

  Timer? countdownTimer;
  Duration myDuration = Duration(days: 5);

  void StartTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      ]);

      // Hide the bottom system navigation bar (soft keys)
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
        SystemUiOverlay.bottom,
      ]);

    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inSeconds.remainder(60));
      
      final heights = MediaQuery.of(context).size.height;
       final widths = heights * 2.1;
    return Scaffold(
      body: Stack(
        children: [
          Container(
             decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.imageHallBg3)))),

      ),

        Positioned(
           top: heights/30,
          right: heights/20,
          child: Image.asset(AppAssetsU.imageKefuRemovebgPreview, height: heights/6,)
      ),
        Positioned(
          bottom: heights/3,
          left: heights/1.5,
          child: Row(
            children: [
              InkWell(
                child: Image.asset(AppAssetsU.imageLoginLogin, height: heights/9),
                onTap: (){
                    showDialog(
                        context: context,
                        builder: (ctx) => SingleChildScrollView(child:AlertDialog(
                          backgroundColor: Colors.transparent,
                          insetPadding: EdgeInsets.zero,
                          contentPadding: EdgeInsets.zero,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          content: Builder(builder: (context){
                              final heights = MediaQuery.of(context).size.height;
                              final widths = heights/2*1;
                              return Container(
                                height: heights/1.3,
                                decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.imageLayerBg)))),
                                child: Column(
                                 children: [
                                   SizedBox(height: heights/5),
                                   Align(
                                       alignment: Alignment.topRight,
                                       child: InkWell(
                                       child:  Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/13,),
                                       onTap: () {
                                         Navigator.pop(context);
                                       })
                                   ),
                                   SizedBox(height: heights/50),
                                   Row(
                                     children: [
                                       SizedBox(width: heights/5),
                                       Text("Login", style: TextStyle(fontSize: heights/30, color: Colors.yellow)),
                                       SizedBox(width: heights/20),
                                       SizedBox(
                                         height: heights/20,
                                         width: heights/3.1,
                                         child: TextField(
                                           style: TextStyle(height: heights/500, color: Colors.white),
                                             decoration: InputDecoration(
                                             hintText: '+91 Phone number',
                                             hintStyle: TextStyle(fontSize: heights/30, color: Colors.white),
                                             labelStyle: TextStyle(fontSize: heights/40, color: Colors.white),
                                             border: InputBorder.none,
                                           ),

                                         ),
                                       ),
                                     ],
                                   ),
                                   SizedBox(height: 10),
                                   Row(
                                     children: [
                                       SizedBox(width: heights/13),
                                       Text("Reset Password", style: TextStyle(fontSize: heights/30,color: Colors.yellow)),
                                       SizedBox(width: heights/20),
                                       SizedBox(
                                         height: heights/20,
                                         width: heights/4,
                                         child: TextField(
                                           style: TextStyle(height: heights/500,color: Colors.white),
                                             decoration: InputDecoration(
                                             hintText: 'Your password',
                                             hintStyle: TextStyle(fontSize: heights/30, color: Colors.white),
                                             labelStyle: TextStyle(fontSize: heights/40, color: Colors.white),
                                             border: InputBorder.none
                                           ),

                                         ),
                                       ),

                                     ],
                                   ),
                                   SizedBox(height: heights/23),
                                   Padding(
                                     padding: EdgeInsets.only(left: heights/2),
                                     child: InkWell(
                                       child: Text("Forget password", style: TextStyle(fontSize: heights/32, color: Colors.white)),
                                       onTap: (){
                                         showDialog(
                                             context: context,
                                             builder: (ctx) => SingleChildScrollView(child:AlertDialog(
                                                title: Image.asset(AppAssetsU.imageForgettitleRemovebgPreview,height: heights/15,),
                                                backgroundColor: Colors.transparent,
                                                insetPadding: EdgeInsets.zero,
                                                contentPadding: EdgeInsets.zero,
                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                content: Builder(builder: (context){
                                                   final heights = MediaQuery.of(context).size.height;
                                                   final widths = heights/2*1;
                                                   return Container(
                                                     height: heights/1.2,
                                                     decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundOneone)),fit: BoxFit.fill)),
                                                     child: Column(
                                                       children: [
                                                         Padding(
                                                           padding: EdgeInsets.only(right: heights/20),
                                                           child: Align(
                                                             alignment: Alignment.topRight,
                                                             child: Container(
                                                                 child: InkWell(
                                                                     child:  Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/13),
                                                                     onTap: () {
                                                                       Navigator.pop(context);
                                                                     })
                                                             ),
                                                           ),
                                                         ),
                                                         SizedBox(height: heights/30),
                                                         Row(
                                                           children: [
                                                             SizedBox(width: heights/13),
                                                             Text("Phone Number", style: TextStyle(fontSize: heights/34, color: Colors.brown)),
                                                             SizedBox(width: heights/20),
                                                             SizedBox(
                                                               height: heights/19,
                                                               width: heights/3,
                                                               child: TextField(
                                                                 style: TextStyle(height: heights/500, color: Colors.white),
                                                                 decoration: InputDecoration(
                                                                   hintText: '+91 Enter phone number',
                                                                   hintStyle: TextStyle(fontSize: heights/34, color: Colors.white),
                                                                   labelStyle: TextStyle(fontSize: heights/34, color: Colors.white),
                                                                   border: InputBorder.none
                                                                 ),

                                                               ),
                                                             ),
                                                           ],
                                                         ),
                                                         SizedBox(height: heights/15),
                                                         Row(
                                                           children: [
                                                             SizedBox(width: heights/6.8),
                                                             Text("OTP", style: TextStyle(fontSize: heights/34, color: Colors.brown)),
                                                             SizedBox(width: heights/10),
                                                             SizedBox(
                                                               height: heights/25,
                                                               width: widths/2,
                                                               child: TextField(
                                                                 style: TextStyle(height: heights/500, color: Colors.white),
                                                                 decoration: InputDecoration(
                                                                   hintText: 'Confirmation code',
                                                                   hintStyle: TextStyle(fontSize: heights/34, color: Colors.white),
                                                                   labelStyle: TextStyle(fontSize: heights/34, color: Colors.white),
                                                                   border:InputBorder.none
                                                                 ),
                                                               ),
                                                             ),
                                                             SizedBox(width: heights/10),
                                                             ElevatedButton(
                                                               style: ElevatedButton.styleFrom(
                                                                 minimumSize: Size(30,30)
                                                               ),
                                                                 onPressed: (){},
                                                                 child: Text('$minutes', style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.watchtext, fontSize: heights / 34))
                                                             )
                                                           ],
                                                         ),
                                                         SizedBox(height: heights/15),
                                                         Row(
                                                           children: [
                                                             SizedBox(width: heights/10),
                                                             Text("Password", style: TextStyle(fontSize: heights/34, color: Colors.brown)),
                                                             SizedBox(width: heights/8),
                                                             SizedBox(
                                                               height: heights/30,
                                                               width: widths/1.5,
                                                               child: TextField(
                                                                 style: TextStyle(height: heights/500,color: Colors.white),
                                                                 decoration: InputDecoration(
                                                                     hintText: 'Enter your password',
                                                                     hintStyle: TextStyle(fontSize: heights/34, color: Colors.white),
                                                                     // labelStyle: TextStyle(fontSize: heights/34, color: Colors.white),
                                                                     border:InputBorder.none
                                                                 ),
                                                               ),
                                                             ),
                                                           ],
                                                         ),
                                                         SizedBox(height: heights/14),
                                                         Row(
                                                           children: [
                                                             SizedBox(width: heights/10),
                                                             Text("Repeat\nPassword", style: TextStyle(fontSize: heights/34, color: Colors.brown)),
                                                             SizedBox(width: heights/8),
                                                             SizedBox(
                                                               height: heights/13,
                                                               width: widths/1.5,
                                                               child: TextField(
                                                                 style: TextStyle(height: heights/500, color: Colors.white),
                                                                 decoration: InputDecoration(
                                                                     hintText: 'Enter password again',
                                                                     hintStyle: TextStyle(fontSize: heights/34, color: Colors.white),
                                                                     border: InputBorder.none
                                                                 ),
                                                               ),
                                                             ),
                                                           ],
                                                         ),
                                                         SizedBox(height: heights/9),
                                                         InkWell(
                                                           child: Image.asset(AppAssetsU.buttonsBtnSureRemovebgPreview, height: heights/12),
                                                           onTap: (){
                                                             Navigator.pop(context);
                                                           },
                                                         )
                                                       ],
                                                     )
                                                   );
                                                 }
                                               )
                                             )
                                             )
                                         );
                                       },
                                     )
                                   ),
                                   SizedBox(height: heights/40),
                                   Image.asset(AppAssetsU.buttonsLoginButton,height: heights/15,),
                                 ],
                               ),
                            );
                          }
                          ),
                        )
                        )
                    );
                },
              ),
            ],
          )
      )
    ],
      ),
    );
  }
}
