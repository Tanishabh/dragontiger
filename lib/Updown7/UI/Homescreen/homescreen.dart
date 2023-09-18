import 'dart:async';
import 'dart:math';
// import 'dart:html';
import 'package:dragontiger/Updown7/UI/Profiles/guestone.dart';
import 'package:dragontiger/Updown7/UI/Profiles/guesttwo.dart';
import 'package:dragontiger/Updown7/UI/Homescreen/newpage.dart';
import 'package:dragontiger/Updown7/UI/Homescreen/shopbutton.dart';
import 'package:dragontiger/Updown7/UI/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dragontiger/Updown7/Ui/constant/images.dart';
import 'package:flip_card/flip_card.dart';

import 'chipTransfer.dart';


class Newchips {
  String photo;
  Newchips(this.photo);
}



class Playerinside {
  String number;
  String name;
  String score;
  Playerinside(this.number,this.name,this.score);
}


class Udgame extends StatefulWidget {
  const Udgame({super.key});

  @override
  State<Udgame> createState() => _UdgameState();
}

class _UdgameState extends State<Udgame>with SingleTickerProviderStateMixin{
  int _timerValue = 10;
  int _currentValue = 10;
  Timer? _timer;

  bool showBorder = true;
  void toggleBorderVisibility() {
    setState(() {
      showBorder = !showBorder;
    });
  }


  void initState() {
    // TODO: implement initState
    super.initState();


    //for border
    Timer.periodic(Duration(seconds: 5),
            (timer) {
            toggleBorderVisibility();
       });


    //landscape mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    // Hide the bottom system navigation bar (soft keys)
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);


    StartTimer();
    _startTimer();

  }
//TIMER CONDITION FOR WATCH AND CARDS

  Timer? countdownTimer;
  Duration myDuration = Duration(days: 5);




 //THIS TIMER FOR CARDS AND WATCH
  void StartTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }


  //THIS TIMER FOR GIF
  void _startTimer(){
    _timer= Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_currentValue>0){
          _currentValue--;
        }else {
          _timer?.cancel();
        }
      });
    });
  }
  // void stopTimer() {
  //   setState(() => countdownTimer!.cancel());
  // }

  // void resetTimer() {
  //   stopTimer();
  //   setState(() => myDuration = Duration(days: 5));
  // }

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


  bool isExpanded = false;
  var handleClick;

  @override
  Widget build(BuildContext context) {

    List<Newchips> list = [
      Newchips(AppAssetsU.chipsCoin10),
      Newchips(AppAssetsU.chipsCoin50),
      Newchips(AppAssetsU.chipsCoin100),
      Newchips(AppAssetsU.chipsCoin1000),
      Newchips(AppAssetsU.chipsCoin5000)
    ];


    List<Playerinside> flist = [
      Playerinside('1','Guest1','20000'),
      Playerinside('2','Guest2','19500'),
      Playerinside('3','Guest3','18070'),
      Playerinside('4','Guest4','17000'),
      Playerinside('5','Guest5','15430'),
      Playerinside('6','Guest6','13090'),
      Playerinside('7','Guest7','1200'),
      Playerinside('8','Guest8','1000'),
      Playerinside('9','Guest9','200'),
      Playerinside('10','Guest10','100')
    ];


    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inSeconds.remainder(60));

    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;

    var _currentValue=1.0;
    return Scaffold(
        body: Stack(
        children: [
        Container(
          height: heights,
          width: widths,
          decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundUpdatedBackground)))),
        ),
          Positioned(
          bottom: 0,
          left: heights / 3.1,
          child: Container(
            height: heights / 6,
            width: widths / 2,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundTotalBetInput), fit: BoxFit.fill),),
          ),
        ),

        //player wala
        Positioned(
            bottom: heights / 17,
            left: heights /9,
            child: InkWell(
              child: Column(
                children: [
                  Image.asset(AppAssetsU.backgroundUpdateBackgroundProfile, height: heights / 7),
                  Text("Players", style: TextStyle(fontSize: heights / 25, color: AppColor.playerwala),
                  )
                ],
              ),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      backgroundColor: AppColor.alertboxBG.withOpacity(0.9),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      content: Builder(builder: (context){
                        var height = MediaQuery.of(context).size.height;
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: heights/6,),
                                  Icon(Icons.group_rounded,color: AppColor.playerIcon),
                                  Text("Players",style: TextStyle(fontSize: height/15, color: AppColor.playerListHeadingTop),)
                                ],
                              ),
                              Row(
                                  children: [
                                    Text("Top", style: TextStyle(fontSize: height/20,color: AppColor.playerListHeading),),
                                    SizedBox(width: heights/7,),
                                    Text("Name",style: TextStyle(fontSize: height/20,color: AppColor.playerListHeading),),
                                    SizedBox(width: heights/6,),
                                    Text("Score",style: TextStyle(fontSize: height/20,color: AppColor.playerListHeading),)
                                  ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 250,
                                    child: ListView.builder(
                                      itemCount: flist.length,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (BuildContext, int index) {
                                          return ListTile(
                                            leading: Text(flist[index].number, style: TextStyle(fontSize: height/25, color: AppColor.playerListText)),
                                            title: Padding(
                                              padding:  EdgeInsets.only(left: heights/22),
                                              child: Text(flist[index].name, style: TextStyle(fontSize: height/25,color: AppColor.playerListText)),
                                            ),
                                            trailing: Text(flist[index].score, style: TextStyle(fontSize: height/25, color: AppColor.playerListText)),
                                          );
                                        }
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                          },
                        ),
                    )
                );
              },
            )
        ),

        //photo green wale ke bgl me
        Positioned(
            bottom: heights / 28,
            left: heights / 3,
            child: CircleAvatar(
              radius: heights/14,
              backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
              backgroundImage: AssetImage(AppAssetsU.chipsVip0),
              child: CircleAvatar(
                radius: heights/19,
                child: Image.asset(AppAssetsU.imageAvatar2, height: heights/8)),
              ),
            ),


        //green just right to the circle avatar
        Positioned(
            bottom: heights / 25,
            left: heights / 2.1,
            child: Image.asset(AppAssetsU.buttonsIcBtnLogout, height: heights / 10)
        ),
          Positioned(
              bottom: heights / 15,
              left: heights /2,
              child: Text("Guest012", style: TextStyle(fontSize: heights/25, color: AppColor.greenboxTEXT),)
          ),



        //chips list
        Positioned.fill(
            top: heights / 1.2,
            left: heights / 1.4,
            child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext, int index) {
                  return CircleAvatar(
                    radius: heights / 16,
                    child: CircleAvatar(
                      radius: heights / 16,
                      backgroundImage: AssetImage(list[index].photo),
                    ),
                  );
                })
        ),



        //green table
        Positioned(
          top: heights / 5,
          left: heights / 5,
          child: Image.asset(AppAssetsU.imageIcSevenupTable, height: heights / 1.5),
        ),

          Container(
            color: Colors.transparent,
            height: 100,
            width: 100,
            child: Positioned.fill(
                top: 100,
                child: Secondone(title: '',)
            ),
          ),



        // for right user
        // Positioned(
        //   top: heights/8,
        //   right: heights/3,
        //   child: playerone()
        // ),
          Positioned(
            top: heights/5,
              right: heights/3,
              child: InkWell(onTap: (){
                Secondone(title:"");
              },
                child: CircleAvatar(
                  radius: heights/15,
                  backgroundImage: AssetImage(AppAssetsU.chipsVip0),
                  backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                  child: CircleAvatar(
                    radius: heights/15,
                    child: Image.asset(AppAssetsU.imageAvatar0, height: heights/7),
                  ),
                ),
              )
          ),
          Padding(
          padding: EdgeInsets.fromLTRB(heights / 3.5, heights/3.5, heights/30, heights/30),
          child: Text("Guest2797513", style: TextStyle(fontSize: heights/35, color: AppColor.rightuser)),
        ),

          Positioned(
            top: heights /2.9,
            right: heights/6,
            child: CircleAvatar(
              radius:heights/12,
              backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
              backgroundImage: AssetImage(AppAssetsU.chipsVip0),
              child: CircleAvatar(
                  radius: heights / 15,
                  child: Image.asset(AppAssetsU.imageAvatar1, height: heights / 7)),
            ),
        ),


        Padding(
          padding: EdgeInsets.fromLTRB(heights / 6.1, heights / 2, heights / 30, heights / 30),
          child: Text("Guest232959", style: TextStyle(fontSize: heights / 35, color: AppColor.rightuser)),
        ),
        Positioned(
            top: heights / 1.7,
            right: heights / 4,
            child: CircleAvatar(
              radius: heights/12,
              backgroundImage: AssetImage(AppAssetsU.chipsVip0),
              backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
              child: CircleAvatar(
                radius: heights / 15,
                child: Image.asset(AppAssetsU.imageAvatar2, height: heights / 7),
              ),
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(heights / 4, heights / 1.3, heights / 30, heights / 30),
          child: Text("Guest229084", style: TextStyle(fontSize: heights / 35, color: AppColor.rightuser)),
        ),



        //for left user
        Positioned(
            top: heights / 8,
            left: heights / 3,
            child: CircleAvatar(
              radius: heights/12,
              backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
              backgroundImage: AssetImage(AppAssetsU.chipsVip0),
              child: CircleAvatar(
                radius: heights / 15,
                child: Image.asset(AppAssetsU.imageAvatar3, height: heights / 7),
              ),
            )
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(heights / 0.8, heights /3.6, heights/20, heights / 30),
          child: Text("Guest2797513", style: TextStyle(fontSize: heights / 35, color: AppColor.leftuser)),
        ),
        Positioned(
            top: heights / 2.9,
            left: heights / 6,
            child: CircleAvatar(
              radius: heights/12,
              backgroundImage: AssetImage(AppAssetsU.chipsVip0),
              backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
              child: CircleAvatar(
                radius: heights / 15,
                child: Image.asset(AppAssetsU.imageAvatar4, height: heights/ 7),
              ),
            )
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(heights / 0.7, heights / 2, heights / 6.1, heights / 30),
          child: Text("Guest232959", style: TextStyle(fontSize: heights / 35, color: AppColor.leftuser)),
        ),
        Positioned(
            top: heights / 1.7,
            left: heights / 4,
            child: CircleAvatar(
              radius: heights/12,
              backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
              backgroundImage: AssetImage(AppAssetsU.chipsVip0),
              child: CircleAvatar(
                radius: heights / 15,
                child: Image.asset(AppAssetsU.imageAvatar5, height: heights / 7),
              ),
            )
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(heights / 0.8, heights / 1.3, heights / 30, heights / 30),
          child: Text("Guest3196377", style: TextStyle(fontSize: heights / 35, color: AppColor.leftuser)),
        ),




        //3 photo in center
        Padding(
          padding: EdgeInsets.fromLTRB(heights/2.5, heights/20, heights/30, heights/30),
          child: Container(
            height: heights / 1,
            width: widths,
            child: Row(
              children: [
                Image.asset(AppAssetsU.chipsIcSevenUpBoxUpLeft, height: heights/3,),
                Padding(
                  padding: EdgeInsets.only(top: heights / 7),
                  child: Image.asset(AppAssetsU.chipsIcSevenUpBoxUpMid, height: heights/4.9),
                ),
                Image.asset(AppAssetsU.chipsIcSevenUpBoxUpRight, height: heights/3,),
              ],
            ),
          ),
        ),



        //wATCH
        Positioned(
          top: heights / 7,
          left: heights / 1.8,
          child: CircleAvatar(
              backgroundImage: AssetImage(AppAssetsU.imageWatch),
              backgroundColor: AppColor.watchbg,
              child: Text('$minutes', style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.watchtext, fontSize: heights / 25))
          ),
        ),




        //main photo female
        Positioned(
            top: heights / 60,
            left: heights / 1.4,
            child: Image.asset(AppAssetsU.imagePoker11, height: heights / 3.9,)
        ),




        // chips button
         Positioned(
          left: heights/1.4,
          bottom: heights/5,
          child: Image.asset(AppAssetsU.buttonsBet, height: heights/13),
        ),
          Positioned(
            right: heights/1.1,
            bottom: heights/4.6,
            child: Text("Total \n bet", style: TextStyle(fontSize: heights/45, color: AppColor.chipInsideText),)
          ),




          //cards
          Positioned(
           top: heights/4,
           height: heights/9,
           left: heights/1.2,
            child: FlipCard(
              fill: Fill.fillBack,
              direction: FlipDirection.HORIZONTAL,
              side: CardSide.FRONT,
              flipOnTouch: true,
            // onFlip: (){
            //   setState(() {
            //     setCountDown();
            //     StartTimer();
            //   });
            // },

              front: Container(child: Image.asset(AppAssetsU.imageTashkapatta)),
              back: Container(child: Image.asset(AppAssetsU.cardsBlk)),
              autoFlipDuration: const Duration(seconds: 60),
          ),
        ),




        //shopbutton
        Positioned(
          top: heights / 1.3,
          right: heights / 6,
          child: InkWell(
            child: Column(
              children: [
                Container(
                  height: heights / 5,
                  width: heights / 5,
                  decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.buttonsBtnshop)))),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Shopbutton()));
            },
          ),
        ),


          // top button
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<String>(
            icon: Image.asset(AppAssetsU.buttonsBtnCaidan),
            offset: Offset(0, 45),
            onSelected: handleClick,
            color: AppColor.popupBackground.withOpacity(0.9),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                child: ListTile(
                  leading: Icon(Icons.home_rounded, color: AppColor.leadingIconPopup),
                  title: Text('Lobby',style: TextStyle(fontSize: heights / 29, color: AppColor.popuptext)),

                ),
              ),
              PopupMenuDivider(
                height: 5,
              ),
              PopupMenuItem<String>(
                child: ListTile(
                  leading: Icon(Icons.rule_outlined, color: AppColor.leadingIconPopup),
                  title: Text('Rule', style: TextStyle(fontSize: heights / 29, color: AppColor.popuptext)),
                ),
              ),
              PopupMenuDivider(
                height: 5,
              ),
              PopupMenuItem<String>(
                child: ListTile(
                  leading: Icon(Icons.music_note_sharp, color: AppColor.leadingIconPopup),
                  title: Text('Music', style: TextStyle(fontSize: heights / 29, color: AppColor.popuptext)),
                ),
              ),
              PopupMenuDivider(
                height: 5,
              ),
              PopupMenuItem<String>(
                child: ListTile(
                  leading: Icon(Icons.volume_up, color: AppColor.leadingIconPopup),
                  title: Text('Sound', style: TextStyle(fontSize: heights / 29, color: AppColor.popuptext)),

                ),
              ),
            ],

          ),
        ),

          // //border
          // Positioned(
          //     top: heights/3,
          //     left: heights/2.6,
          //
          //     child:Container(
          //       child: Row(
          //        children: [
          //       //left
          //          Container(
          //             height: heights/3,
          //            width: heights/4,
          //             decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
          //             border: showBorder ? Border.all(color: Colors.yellow, width: 4) : Border.all(color: Colors.transparent)
          //           ),
          //         ),
          //       SizedBox(
          //         width: heights/25,
          //       ),
          //
          //       //center
          //          Container(
          //             height: heights/5,
          //             width: heights/2.5,
          //            decoration: BoxDecoration(borderRadius: BorderRadius.zero,
          //             border: showBorder ? Border.all(color: Colors.yellow, width: 4) : Border.all(color: Colors.transparent)
          //           ),
          //         ),
          //
          //       SizedBox(
          //         width: heights/25,
          //       ),
          //
          //       //right
          //          Transform.rotate(
          //          angle: -0.01,
          //          child:Container(
          //          height: heights/3,
          //          width: heights/4,
          //          decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40), bottomRight: Radius.circular(40),),
          //              border: showBorder ? Border.all(color: Colors.yellow, width: 4) : Border.all(color: Colors.transparent),
          //           ),
          //         ),
          //          )
          //        ],
          //   ),
          // ),
          // ),





          //right

          Positioned(
            top: heights/2.9,
            right: heights/2.6,
            child: Transform.rotate(
                   angle: -0.01,
                  child:Container(
                       height: heights/3,
                       width: heights/3.8,
                       decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(heights/8.6), bottomRight: Radius.circular(heights/8.8)),
                          border: showBorder ? Border.all(color: AppColor.borderColor1, width: heights/150) : Border.all(color: AppColor.borderColor2, width: heights/150),
               ),
               ),
               ),
               ),

          //left
          Positioned(
            top: heights/2.9,
            left: heights/2.5,
            child: Transform.rotate(
                   angle: pi/75,
                   child:Container(
                       height: heights/3,
                       width:  heights/3.7,
                       decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(heights/8), bottomLeft: Radius.circular(heights/8.8)),
                          border: showBorder ? Border.all(color: AppColor.borderColor1, width: heights/150) : Border.all(color: AppColor.borderColor2, width: heights/150)
              ),
              ),
              ),
              ),

           //center
           Positioned(
             top: heights/2.1,
             right: heights/1.5,
             child: Container(
                 height: heights/5,
                 width: heights/2.3,
                 decoration: BoxDecoration(borderRadius: BorderRadius.zero,
                    border: showBorder ? Border.all(color: AppColor.borderColor1,width: heights/150) : Border.all(color: AppColor.borderColor2, width: heights/150)
            ),
            ),
            ),



          // gif
          Center(
            child: Image.asset(AppAssetsU.imageOutputOnlinegiftools,height: heights/3,color: AppColor.gifColor),
          ),


          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //     Image.asset(AppAssetsU.imageOutputOnlinegiftools,height: heights/3,color: Colors.orange),
          //       Text('$_currentValue', style: TextStyle(fontSize: 20),)
          //     ],
          //   ),
          // )






    ]
        )
    );
  }
}


