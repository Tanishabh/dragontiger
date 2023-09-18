import 'package:dragontiger/DragonTiger/Ui/constant/images.dart';
import 'package:dragontiger/Ludo/UI/homescreen/Addmoney.dart';
import 'package:dragontiger/Ludo/UI/homescreen/Classic.dart';
import 'package:dragontiger/Ludo/UI/homescreen/Invite.dart';
import 'package:dragontiger/Ludo/UI/homescreen/Leaderboard.dart';
import 'package:dragontiger/Ludo/UI/homescreen/PrivateTable.dart';
import 'package:dragontiger/Ludo/UI/homescreen/ReferAndEarn.dart';
import 'package:dragontiger/Ludo/UI/homescreen/Setting.dart';
import 'package:dragontiger/Ludo/UI/homescreen/Tournament.dart';
import 'package:dragontiger/Ludo/UI/homescreen/Wallet.dart';
import 'package:dragontiger/Ludo/UI/homescreen/profilepage.dart';
import 'package:dragontiger/Ludo/UI/homescreen/leaderboardNew.dart';
import 'package:dragontiger/Ludo/main_screen.dart';
import 'package:dragontiger/Updown7/UI/constant/color.dart';
import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//class for button
class Newbutton {
  String photo;
  String photos;
  Newbutton(this.photo, this.photos);
}

//class for 4picutre
class Fourbox {
  String photo;
  String title;
  final void Function()? onTap;
  Fourbox(this.photo, this.title, this.onTap);
  // Fourbox(this.photo, this.title);
}

class Numberthree extends StatefulWidget {
  const Numberthree({super.key});

  @override
  State<Numberthree> createState() => _NumberthreeState();
}

class _NumberthreeState extends State<Numberthree> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  List<Newbutton> list = [
    Newbutton(AppAssetsU.backgroundCirclebgtwo, AppAssetsU.companylogoWhaatup),
    Newbutton(AppAssetsU.backgroundCirclebgtwo, AppAssetsU.buttonsChaticon),
    Newbutton(AppAssetsU.backgroundCirclebgtwo, AppAssetsU.buttonsSharee),
  ];



  @override
  Widget build(BuildContext context) {
    List<Fourbox> boxdata= [
      Fourbox(AppAssetsU.buttonsFrontbuttonthree,"Classic", (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));}),
      Fourbox(AppAssetsU.buttonsFrontbuttonthree,"Tournament",(){showDialog(context: context,
    builder: (ctx) => Mytour()
    );}),
      Fourbox(AppAssetsU.buttonsFrontbuttonthree,"Private Table",(){
        showDialog(
            context: context,
            builder: (ctx) =>Myprivate()
        );
        }),
      Fourbox(AppAssetsU.buttonsFrontbuttonthree,"Refer and earn",(){
        showDialog(context: context,
          builder: (ctx) =>  Myrefer()
      );}),
    ];
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: Myprofile(),
        title:  Text("Apple", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
        actions: [
       Padding(
         padding: EdgeInsets.all(10),
         child: Container(
           width: heights / 6.5,
           decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2), borderRadius: BorderRadius.circular(10)),
           child: Padding(
             padding: const EdgeInsets.only(top: 2),
             child: Text("10", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white, fontSize: 18))),
           ),
         ),
       ),

          Mymoney(),
       Mywallet()
        ],
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundLudobg), fit: BoxFit.cover)),
        child: Column(
          children: [
            Row(
              children: [
                // Column(
                //   children: [
                //     Container(
                //       height: heights/2,
                //       child: ListView.builder(
                //           itemCount: list.length,
                //           itemBuilder: (BuildContext, int index) {
                //             return ListTile(
                //                 leading: CircleAvatar(
                //                   radius: heights/30,
                //                   backgroundImage: AssetImage(list[index].photo),
                //                   backgroundColor: Colors.transparent,
                //                   child: CircleAvatar(
                //                     radius: heights/45,
                //                     backgroundColor: Colors.transparent,
                //                     child: Image.asset(list[index].photos),
                //                   )
                //                 )
                //             );
                //           }),
                //     ),
                //   ],
                // ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: heights / 30,
                      backgroundImage:
                          AssetImage(AppAssetsU.backgroundCirclebgtwo),
                      backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                      child: CircleAvatar(
                        radius: heights / 45,
                        backgroundColor: Colors.transparent,
                        child: Image.asset(AppAssetsU.imageWhatsapp),
                      ),
                    ),
                    Text("Whatsapp", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
                    CircleAvatar(
                      radius: heights / 30,
                      backgroundImage:
                          AssetImage(AppAssetsU.backgroundCirclebgtwo),
                      backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                      child: CircleAvatar(
                        radius: heights / 45,
                        backgroundColor: Colors.transparent,
                        child: Image.asset(AppAssetsU.buttonsChaticon),
                      ),
                    ),
                    Text("Telegram", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
                    CircleAvatar(
                      radius: heights / 30,
                      backgroundImage:
                          AssetImage(AppAssetsU.backgroundCirclebgtwo),
                      backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                      child: CircleAvatar(
                        radius: heights / 45,
                        backgroundColor: Colors.transparent,
                        child: Image.asset(AppAssetsU.buttonsSharee),
                      ),
                    ),
                    Text("Share", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(AppAssetsU.backgroundAppIcon),
                ),
                Spacer(),
                Column(
                  children: [
                    CircleAvatar(
                      radius: heights / 30,
                      backgroundImage:
                          AssetImage(AppAssetsU.backgroundCirclebgtwo),
                      backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          )),
                    ),
                    Text(
                      "Sound",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                    CircleAvatar(
                      radius: heights / 30,
                      backgroundImage:
                          AssetImage(AppAssetsU.backgroundCirclebgtwo),
                      backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.music_note_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Text("Music",
                        style: GoogleFonts.playfairDisplay(
                            textStyle: TextStyle(color: Colors.white))),
                    CircleAvatar(
                      radius: heights / 30,
                      backgroundImage:
                          AssetImage(AppAssetsU.backgroundCirclebgtwo),
                      backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.vibration,
                            color: Colors.white,
                          )),
                    ),
                    Text("Vibration",
                        style: GoogleFonts.playfairDisplay(
                            textStyle: TextStyle(color: Colors.white))),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                height: heights/2.8,
                width: heights/2,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/2,
                    ),
                    itemCount: boxdata.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: boxdata[index].onTap,
                        child: Container(
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(boxdata[index].photo),fit: BoxFit.fill)),
                            child: Padding(
                              padding: EdgeInsets.only(top: 68,left: 27),
                              child: Text(boxdata[index].title, style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.brown)),),
                            )
                        ),
                      );
                    }),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: heights / 25,
                          backgroundImage:
                              AssetImage(AppAssetsU.backgroundCirclebgtwo),
                          backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                          child: CircleAvatar(
                            radius: heights / 35,
                            backgroundColor: Colors.transparent,
                            child: Image.asset(AppAssetsU.buttonsLeadimage),
                          ),
                        ),
                        Text("Leaderboard",
                            style: GoogleFonts.playfairDisplay(
                                textStyle: TextStyle(color: Colors.white))),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Product()));
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: heights /25,
                          backgroundImage:
                          AssetImage(AppAssetsU.backgroundCirclebgtwo),
                          backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                          child: CircleAvatar(
                            radius: heights / 35,
                            backgroundColor: Colors.transparent,
                            child: Image.asset(AppAssetsU.imageNewinvite),
                          ),
                        ),
                        Text("Invite", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Myinvite()));
                    },
                  ),

                  Column(
                    children: [
                      Mysettings()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

    // Stack(
    //   children: [
    //     Container(
    //       decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundLudobg),fit: BoxFit.cover)),
    //     ),
    //
    //     //ludo icon
    //     Positioned(
    //         top: heights / 15,
    //         left: heights / 6.5,
    //         child: Image.asset(AppAssetsU.backgroundAppIcon, height: heights / 4)
    //     ),
    //
    //     //left side icon
    //     Positioned(
    //         top: heights / 30,
    //         child: Column(
    //           children: [
    //             CircleAvatar(
    //               radius: heights /30,
    //               backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
    //               backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
    //               child: CircleAvatar(
    //                 radius: heights /45,
    //                 backgroundColor: Colors.transparent,
    //                 child: Image.asset(AppAssetsU.companylogoWhaatup),
    //               ),
    //             ),
    //             Text("Whatsapp", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))
    //             ),
    //             CircleAvatar(
    //               radius: heights /30,
    //               backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
    //               backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
    //               child: CircleAvatar(
    //                 radius: heights /45,
    //                 backgroundColor: Colors.transparent,
    //                 child: Image.asset(AppAssetsU.buttonsChaticon),
    //               ),
    //             ),
    //             Text("Telegram", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
    //             CircleAvatar(
    //               radius: heights / 30,
    //               backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
    //               backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
    //               child: CircleAvatar(
    //                 radius: heights/45,
    //                 backgroundColor: Colors.transparent,
    //                 child: Image.asset(AppAssetsU.buttonsSharee),
    //               ),
    //             ),
    //             Text("Share", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))
    //             ),
    //           ],
    //         )),
    //
    //     //right side icon
    //     Positioned(
    //       top: heights /30,
    //       right: heights / 70,
    //       child: Column(
    //         children: [
    //           CircleAvatar(
    //             radius: heights / 30,
    //             backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
    //             backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
    //             child: IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(
    //                   Icons.play_arrow,
    //                   color: Colors.white,
    //                 )),
    //           ),
    //           Text("Sound", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white)),
    //           ),
    //           CircleAvatar(
    //             radius: heights /30,
    //             backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
    //             backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
    //             child: IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(
    //                   Icons.music_note_sharp,
    //                   color: Colors.white,
    //                 )),
    //           ),
    //           Text("Music", style:GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
    //           CircleAvatar(
    //             radius: heights /30,
    //             backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
    //             backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
    //             child: IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(
    //                   Icons.vibration,
    //                   color: Colors.white,
    //                 )),
    //           ),
    //           Text("Vibration", style:GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
    //         ],
    //       ),
    //     ),
    //
    //     //purple photo left
    //     Positioned(
    //       top: heights/3,
    //         left: heights/13,
    //         child: Column(
    //           children: [
    //             Myclassic(),
    //             SizedBox(height: heights/35),
    //             Myprivate()
    //           ],
    //         )
    //     ),
    //     //text
    //     Positioned(
    //       top: heights/2.3,
    //       left: heights/7.1,
    //       child: Text(" 1 vs 1\nClassic", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
    //     ),
    //     Positioned(
    //       top: heights/1.6,
    //       left: heights/9.1,
    //       child: Text(" Private Table", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
    //     ),
    //
    //     //purple photo right
    //     Positioned(
    //         top: heights/3,
    //         right: heights/17,
    //         child: Column(
    //           children: [
    //             InkWell(child: Image.asset(AppAssetsU.buttonsFrontbuttonthree,width: heights/5),
    //                 onTap: (){
    //
    //                 }),
    //             SizedBox(height: heights/35),
    //             Myrefer(),
    //
    //           ],
    //         )
    //     ),
    //     //purple right text
    //     Positioned(
    //         bottom: heights/2.5,
    //       right: heights/10.3,
    //       child: Text(" Tournament", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
    //     ),
    //     Positioned(
    //       bottom: heights/4.5,
    //       right: heights/12,
    //       child: Text(" Refer and earn", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
    //     ),
    //
    //
    //
    //     //lead board
    //     Positioned(
    //        bottom: heights/70,
    //         left: heights/25,
    //         child: InkWell(child:Column(
    //           children: [
    //             CircleAvatar(
    //               radius: heights /30,
    //               backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
    //               backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
    //               child: CircleAvatar(
    //                 radius: heights /45,
    //                 child: Image.asset(AppAssetsU.companylogoWhaatup),
    //               ),
    //             ),
    //             Text("Leaderboard", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))
    //             ),
    //           ],
    //         ),
    //           onTap: (){
    //               Navigator.push(context,
    //               MaterialPageRoute(builder: (context)=> Product())
    //               );
    //           },
    //
    //     ),
    //     ),
    //
    //
    //
    //     //settings
    //     Positioned(
    //       bottom: heights/70,
    //       right: heights/25,
    //       child: Mysettings()
    //     )
    //   ],
    // )
  }
}
