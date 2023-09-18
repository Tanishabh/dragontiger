import 'package:dragontiger/Updown7/UI/constant/color.dart';
import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Gamepage.dart';

class Mysettings extends StatefulWidget {
  const Mysettings({super.key});

  @override
  State<Mysettings> createState() => _MysettingsState();
}

class _MysettingsState extends State<Mysettings> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights*2.1;
    return InkWell(child: Column(
      children: [
        CircleAvatar(
          radius: heights /25,
          backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
          backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
          child: CircleAvatar(
            radius: heights /35,
            backgroundColor: Colors.transparent,
            child: Image.asset(AppAssetsU.buttonsSettingimage),
          ),
        ),
        Text("Setting", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white)))
      ],
    ),
      onTap: (){
        showDialog(context: context,
            builder: (ctx) => AlertDialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              content: Builder(builder: (context){
                return Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundNewbg ),fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            child: InkWell(
                                child:  Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/20),
                                onTap: () {
                                  Navigator.pop(context);
                                })
                        ),
                      ),
                      Center(child: Text("Settings", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)))),
                      // Text("Settings", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/20))),
                      SizedBox(height: heights/20,),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Sound', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.black,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Vibration', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.black,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Game Chat', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.black,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Share', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Colors.green,
                                shape: RoundedRectangleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.share),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Contact', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Colors.green,
                                shape: RoundedRectangleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.contact_page_sharp),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Gamer Rules', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Colors.green,
                                shape: RoundedRectangleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.rule_folder),
                                color: Colors.white,
                                onPressed: () {
                                  showDialog(context: context,
                                      builder: (ctx) => AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          content: Builder(builder: (context){
                                            return Container(
                                              height: heights/2,
                                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundNewbg),fit: BoxFit.fill)),
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment: Alignment.topRight,
                                                    child: Container(
                                                        child: InkWell(
                                                            child:  Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/28),
                                                            onTap: () {
                                                              Navigator.pop(context);
                                                            })
                                                    ),
                                                  ),
                                                  Center(child: Text("Rules", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)))),
                                                  // Text("Rules", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/20))),
                                                ],
                                              ),
                                            );
                                          }
                                          )
                                      )
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('How to use', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Colors.green,
                                shape: RoundedRectangleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.content_paste_search_sharp),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Change Password', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Colors.green,
                                shape: RoundedRectangleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.remove_red_eye),
                                color: Colors.white,
                                onPressed: () {
                                  showDialog(context: context,
                                      builder: (ctx) => SingleChildScrollView(child:AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          content: Builder(builder: (context){
                                            return Container(
                                              height: heights/1.5,
                                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundNewbg),fit: BoxFit.fill)),

                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment: Alignment.topRight,
                                                    child: Container(
                                                        child: InkWell(
                                                            child:  Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/28),
                                                            onTap: () {
                                                              Navigator.pop(context);
                                                            })
                                                    ),
                                                  ),
                                                  Center(child: Text("Change Password", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)))),

                                                  // Text("Change Password", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/30))),
                                                  // SizedBox(height: heights/30),
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: TextField(
                                                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                                        hintText: "Current Password",
                                                        hintStyle: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                        labelStyle: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                        fillColor: Colors.grey,
                                                        filled: true

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ),
                                                  SizedBox(height: heights/40),
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: TextField(
                                                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                                        hintText: "Password",
                                                        hintStyle: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                        labelStyle: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                          fillColor: Colors.grey,
                                                          filled: true

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ),
                                                  SizedBox(height: heights/40),
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: TextField(
                                                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                                        hintText: "Confirm password",
                                                        hintStyle: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                        labelStyle: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                          fillColor: Colors.grey,
                                                          filled: true

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ),
                                                  SizedBox(height: heights/40),
                                                  TextButton(
                                                      onPressed: (){
                                                        Navigator.pushReplacement(context,
                                                            MaterialPageRoute(builder: (context)=> Numberthree())

                                                        );
                                                      },
                                                      child: Image.asset(AppAssetsU.imageSubmitRemovebgPreview,height: heights/15)
                                                  )

                                                ],
                                              ),
                                            );
                                          }
                                          )
                                      )
                                      )
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Logout', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Colors.green,
                                shape: RoundedRectangleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.logout_outlined),
                                color: Colors.white,
                                onPressed: () {
                                  showDialog(context: context,
                                      builder: (ctx) => SingleChildScrollView(child:AlertDialog(
                                        backgroundColor:Colors.transparent,
                                        content: Builder(builder: (context){
                                          return Container(
                                            height: heights/3,
                                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundNewbg),fit: BoxFit.fill)),

                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      child: InkWell(
                                                          child:  Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/28),
                                                          onTap: () {
                                                            Navigator.pop(context);
                                                          })
                                                  ),
                                                ),
                                                Center(child: Text("Logout", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)))),
                                                // Text("Logout",style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/25))),
                                                SizedBox(height: heights/30),
                                                Text("Are you sure want to Logout?", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                                                SizedBox(height: heights/20),
                                                Padding(
                                                  padding: EdgeInsets.only(left:heights/30),
                                                  child: Row(
                                                    children: [
                                                      // SizedBox(width: heights/85,),
                                                      Image.asset(AppAssetsU.imageYes,height: heights/25),
                                                      // SizedBox(width: heights/70),
                                                      Image.asset(AppAssetsU.imageNo,height: heights/25)
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        }),
                                      )
                                      )
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      )


                    ],
                  ),
                );
              }),

            )
        );
      },
    );

  }
}
