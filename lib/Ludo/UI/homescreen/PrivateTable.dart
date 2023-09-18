import 'package:dragontiger/Updown7/UI/constant/color.dart';
import 'package:dragontiger/Updown7/Ui/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//list for privatetable tabbar
class Pridata{
  String titleone;

  Pridata(this.titleone);
}

class Myprivate extends StatefulWidget {
  const Myprivate({super.key});

  @override
  State<Myprivate> createState() => _MyprivateState();
}

class _MyprivateState extends State<Myprivate> {
  List<Pridata> list = [
    Pridata("₹"),
    Pridata("₹"),
    Pridata("₹"),
    Pridata("₹"),
    Pridata("₹"),
    Pridata("₹"),
    Pridata("₹"),

  ];


  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return AlertDialog(
      contentPadding:EdgeInsets.zero ,
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      content: Container(
          height: heights/1.3,
          width: heights/1.9,
          decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundBgall)))),
          child:Column(
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
              // Container(
              //     height: heights/10,
              //     width: heights/2.2,
              //     color: Colors.indigo[900],
              //     child: Center(child: Text("Private Table", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white))))
              // ),
              // Padding(
              //   padding: EdgeInsets.only(left:heights/20),
              //   child: Row(
              //     children: [
              //       TextButton(onPressed: (){},
              //           child: Image.asset(AppAssetsU.buttonsClassic,height: heights/25,)
              //       ),
              //       CircleAvatar(
              //         radius: heights/70,
              //         backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
              //         backgroundColor: Colors.transparent,
              //         child: Icon(Icons.question_mark_rounded,color: Colors.white,size: heights/60,),
              //       ),
              //       TextButton(onPressed: (){},
              //           child: Image.asset(AppAssetsU.buttonsQuick,height: heights/25,)
              //       ),
              //       CircleAvatar(
              //         radius: heights/70,
              //         backgroundImage: AssetImage(AppAssetsU.backgroundCirclebgtwo),
              //         backgroundColor: Colors.transparent,
              //         child: Icon(Icons.question_mark_rounded,color: Colors.white,size: heights/60,),
              //       ),
              //     ],
              //   ),
              // ),
              // DefaultTabController(
              //     length: 2 ,
              //     child: Column(
              //       children: [
              //         Container(
              //           child: TabBar(
              //             indicatorColor: Colors.indigo[900],
              //             // indicatorSize: ,
              //             tabs: [
              //               Tab(
              //                 child: Text("Create", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white))),
              //               ) ,
              //               Tab(
              //                 child: Text("Join", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white))),
              //               ) ,
              //             ],
              //           ),
              //         ),
              //
              //         TabBarView(
              //           children: [
              //             Expanded(
              //               child: Container(
              //                 height: 500,
              //                 child: ListView.builder(
              //                     itemCount: list.length,
              //                     scrollDirection: Axis.vertical,
              //                     itemBuilder: (BuildContext, int index) {
              //                       return ListTile(
              //                         leading: TextButton(onPressed: (){},
              //                             child: Container(
              //                               height: 100,
              //                               decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.buttonsIcBtnOrange))),
              //                               child: Text(list[index].titleone),
              //                             )
              //                         ),
              //                         title: Text("timer",style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)),),
              //                         trailing: TextButton(onPressed: (){},
              //                             child: Container(
              //                               height: 100,
              //                               decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.buttonsIcBtnOrange,))),
              //                               child: Text(list[index].titleone),
              //                             )
              //                         ),
              //                       );
              //                     }),
              //               ),
              //             ),
              //             Expanded(
              //               child: Container(
              //                 height: 500,
              //                 child: ListView.builder(
              //                     itemCount: list.length,
              //                     scrollDirection: Axis.vertical,
              //                     itemBuilder: (BuildContext, int index) {
              //                       return ListTile(
              //                         leading: TextButton(onPressed: (){},
              //                             child: Container(
              //                               height: 100,
              //                               decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.buttonsIcBtnOrange))),
              //                               child: Text(list[index].titleone),
              //                             )
              //                         ),
              //                         title: Text("timer",style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)),),
              //                         trailing: TextButton(onPressed: (){},
              //                             child: Container(
              //                               height: 100,
              //                               decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.buttonsIcBtnOrange,))),
              //                               child: Text(list[index].titleone),
              //                             )
              //                         ),
              //                       );
              //                     }),
              //               ),
              //             ),
              //           ],
              //         )
              //       ],
              //     )
              // )



            ],
          )
      )
      // Builder(builder: (context){
      //   return
      // }),
    );
  }
}

// class MYname extends StatelessWidget {
//   const MYname({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//
//     return AlertDialog(
//       backgroundColor: Colors.white,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10.0))),
//       content: Builder(
//         builder: (context) {
//           return Container(
//             height: 681,
//             width: 364,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: (AssetImage(AppAssetsU.backgroundBgall)),
//                     fit: BoxFit.fill)),
//           );
//
//
//       ),
//     );
//   }
// }
