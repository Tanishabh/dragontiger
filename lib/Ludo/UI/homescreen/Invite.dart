import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tanisha {
  String photo;
  String text;
  Tanisha(this.photo, this.text);
}

class Myinvite extends StatefulWidget {
  const Myinvite({super.key});

  @override
  State<Myinvite> createState() => _MyinviteState();
}

class _MyinviteState extends State<Myinvite> {

  List<Tanisha> frnddata = [
  Tanisha(AppAssetsU.imageAvatar5, 'Tanisha'),
    Tanisha(AppAssetsU.imageAvatar4, 'itsme'),
    Tanisha(AppAssetsU.imageAvatar5, 'aman'),
    Tanisha(AppAssetsU.imageAvatar1, 'shweta'),
  ];

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      content: Builder(builder: (context){
        return Stack(
          children: [
            Container(
            height: heights/0.3,
            width: heights/1.9,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundInvitebg))),
            child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(heights/30),
                    child: Center(child: DefaultTabController(
                      length: 3 ,
                      child: Column(
                        children: [
                          Container(
                            child: TabBar(
                              // indicatorColor: Colors.indigo[900],
                              indicator: BoxDecoration(
                                color: Colors.red[900],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelColor: Colors.black,
                              dividerColor: Colors.black,
                              // indicatorSize: ,
                              tabs: [
                                Tab(
                                  child: Text("Friend \n   list", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/40,color: Colors.white))),
                                ) ,
                                Tab(
                                  child: Text("Accept friend", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/40,color: Colors.white))),
                                ) ,
                                Tab(
                                  child: Text("  Add friend", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/40,color: Colors.white))),
                                ) ,
                              ],
                            ),
                          ),
                          // Expanded(
                          //   child: TabBarView(children:
                          //     [
                          //       Container(
                          //         child: ListView.builder(
                          //             itemCount: frnddata.length,
                          //             scrollDirection: Axis.vertical,
                          //             itemBuilder: (BuildContext, int index) {
                          //               return ListTile(
                          //                 leading: CircleAvatar(
                          //                   radius: 30,
                          //                   backgroundImage: AssetImage(frnddata[index].photo),
                          //                 ),
                          //                 title: Text(frnddata[index].text),
                          //               );
                          //             }),
                          //       ),
                          //       Container(
                          //         child: ListView.builder(
                          //             itemCount: frnddata.length,
                          //             scrollDirection: Axis.vertical,
                          //             itemBuilder: (BuildContext, int index) {
                          //               return ListTile(
                          //                 leading: CircleAvatar(
                          //                   radius: 30,
                          //                   backgroundImage: AssetImage(frnddata[index].photo),
                          //                 ),
                          //                 title: Text(frnddata[index].text),
                          //                 trailing: Icon(Icons.close,color: Colors.white),
                          //               );
                          //             }),
                          //       ),
                          //       Container(
                          //         child: ListView.builder(
                          //             itemCount: frnddata.length,
                          //             scrollDirection: Axis.vertical,
                          //             itemBuilder: (BuildContext, int index) {
                          //               return ListTile(
                          //                 leading: CircleAvatar(
                          //                   radius: 30,
                          //                   backgroundImage: AssetImage(frnddata[index].photo),
                          //                 ),
                          //                 title: Text(frnddata[index].text),
                          //                 trailing: Icon(Icons.add_circle,color: Colors.white),
                          //               );
                          //             }),
                          //       ),
                          //     ]
                          //   ),
                          // )
                        ],
                      ),
                    )
                    ),
                  )
                ])
            ),
            Positioned(
              top: 0,
              right: 0,
              child: InkWell(
                child: Image.asset(AppAssetsU.buttonsBtnClose2,
                    height: heights / 20),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),

          ],
        );
      }),
    );
  }
}
