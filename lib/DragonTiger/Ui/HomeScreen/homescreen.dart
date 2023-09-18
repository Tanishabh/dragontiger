import 'package:dragontiger/DragonTiger/Ui/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Result{                // class for dt symbol
  String photo;
  Result(this.photo);
}

class Chipsdata {         // class for chips
   String photos;
   Chipsdata(this.photos);
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});


  @override
  State<homescreen> createState() => _homescreenState();


}

class _homescreenState extends State<homescreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    // Hide the bottom system navigation bar (soft keys)
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);
  }

  @override
  Widget build(BuildContext context) {

    List<Result> result = [
      Result(AppAssets.imageIcDtT),
      Result(AppAssets.imageIcDtT),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtT),
      Result(AppAssets.imageIcDtT),
      Result(AppAssets.imageIcDtT),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtT),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.backgroundIcDtTie),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtD),
      Result(AppAssets.imageIcDtD),

    ];

    List<Chipsdata> list = [
      Chipsdata(AppAssets.chipsCoin10),
      Chipsdata(AppAssets.chipsCoin50),
      Chipsdata(AppAssets.chipsCoin100),
      Chipsdata(AppAssets.chipsCoin1000),
      Chipsdata(AppAssets.chipsCoin5000)
    ];
    final heights= MediaQuery.of(context).size.height;
    final widths = heights*2.1;

    return Scaffold(
        body: Container(
          height: heights,
          width: widths,
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.backgroundDragontigerBg), fit: BoxFit.fill)),
          child: Stack(
            children: [
           Container(
              height: heights/1.30,
              width: widths,
              decoration: BoxDecoration(image: DecorationImage(image:AssetImage(AppAssets.backgroundIcDtTable),fit: BoxFit.contain)),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: heights/10, right: heights/17, top: heights/7.7, bottom: heights/60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: heights/2.5,
                          width: widths/7,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.backgroundPurpledragon),fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: heights/12),

                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: heights/3.3,
                            width: widths/7.5,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.backgroundIcDtTieButton),fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: heights/2.5,
                            width: widths/7,

                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.backgroundOrange), fit: BoxFit.fill),
                            ),
                          )),
                    ],
                  ),
                ),
              )
           ),
          Positioned(                                                                            //box top gif
              top: heights/1000,
              left: heights/2.5,
              child: Row(
                children: [
                  Image.asset(AppAssets.imageIcDragonGif, height: heights/6),
                  Image.asset(AppAssets.imageFireCard, height: heights/6),
                  Image.asset(AppAssets.imageIcVerse, height: heights/6),
                  Image.asset(AppAssets.imageFireCard, height: heights/6),
                  Image.asset(AppAssets.imageIcTigerGif, height: heights/6),
                ],
              )
          ),
          Positioned(                                                                         //for left side user
            top: heights/4,
              left: widths/15,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: widths/35,
                    child: Image.asset(AppAssets.imageAvatar1),
                  ),
                  Text("bapi", style: TextStyle(fontSize: heights/35, color: Colors.white)),
                  SizedBox(
                    height: heights/30,
                  ),
                  CircleAvatar(
                    radius: widths/35,
                    child: Image.asset(AppAssets.imageAvatar0),
                  ),
                  Text("Guest7833875", style: TextStyle(fontSize: heights/35,color: Colors.white)),
                  SizedBox(
                    height: heights/30,
                  ),
                  CircleAvatar(
                    radius: widths/35,
                    child: Image.asset(AppAssets.imageAvatar2),
                  ),
                  Text("Guest4965034", style: TextStyle(fontSize: heights/35, color: Colors.white)),
                ],
              )
          ),
          Positioned(                                                                           //for right side user
            top: heights/4,
              right: widths/20,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: widths/35,
                    child: Image.asset(AppAssets.imageAvatar3),
                  ),
                  Text("Guest17743254", style: TextStyle(fontSize: heights/35, color: Colors.white)),
                  SizedBox(
                    height: heights/30,
                  ),
                  CircleAvatar(
                    radius: widths/35,
                    child: Image.asset(AppAssets.imageAvatar4),
                  ),
                  Text("Guest7667357", style: TextStyle(fontSize: heights/35, color: Colors.white)),
                  SizedBox(
                    height: heights/30,
                  ),
                  CircleAvatar(
                    radius: widths/35,
                    child: Image.asset(AppAssets.imageAvatar5),
                  ),
                  Text("Guest7668351", style: TextStyle(fontSize: heights/35, color: Colors.white))
                ],
              )
          ),
              Padding(                                                                                 //dt list
                padding: EdgeInsets.only(left:heights/2,bottom: heights/1.7),
                child: Positioned.fill(
                    top: heights/500,
                    left: heights/50,
                    child:
                     ListView.builder(
                            itemCount: result.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext, int index) {
                              return CircleAvatar(
                                radius: heights/45,
                                child:CircleAvatar(
                                        radius: heights/40,
                                        backgroundImage:AssetImage(result[index].photo),
                                    ),
                              );
                            }
                        )
            ),
              ),

              Positioned(                                                         //button just after dt list
                   top: heights/5.6,
                  right: heights/2.2,
                  child:  Image.asset(AppAssets.buttonsIcArrowZigzag,height: heights/19,)
              ),
              Positioned(                                                                      //button top
                  top: heights/50,
                  left: heights/0.6,
                  child: Image.asset(AppAssets.buttonsBtnCaidan, height: heights/6,)
              ),
              Positioned(                                                                     //top button shop
                  bottom: heights/60,
                  left: heights/0.7,
                  child: Image.asset(AppAssets.buttonsBtnshop,height: heights/5,)
              ),

              Positioned(                                                 //green ke niche box
                top: heights/1.9,
                left: heights/1.3,
                right: heights/1.3,
                child:
                 Container(
                height: heights/9,
                width: widths/9,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.buttonsRuppePannel),fit: BoxFit.fill),
                ),
              ),
              ),

              Positioned(
                bottom: heights/10,
                left: heights/2,
                child:
                Container(
                  height: heights/6,
                  width: widths/2.2,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.backgroundTotalBetInput),fit: BoxFit.fill),
                  ),
                ),
              ),

              Positioned(                                        //photoorange chips
                  bottom: heights/11,
                  left: heights/1.9,
                  child:
                  Container(
                    height: heights/6,
                    width: widths/8,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.buttonsRedButton),fit: BoxFit.fill),
                  ),
              ),
              ),

              Positioned(                                       //photo left to the chips
                  bottom: heights/7,
                  left: heights/2.7,
                  child: Image.asset(AppAssets.imageAvatar4, height: heights/7.2,)
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(heights/1.3, heights/1.4, heights/2, heights/10),
                child: Positioned.fill(                                                      //chips list
                    child: ListView.builder(
                     itemCount: list.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (BuildContext, int index) {
                       return CircleAvatar(
                         radius: heights/18,
                         child: CircleAvatar(
                           radius: heights/18,
                           backgroundImage:AssetImage(list[index].photos),
                         ),
                       );

                     }

                     )

                 ),
              ),
            ],
          )
        ),
    );
  }
}
