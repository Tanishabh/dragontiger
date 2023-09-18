import 'package:dragontiger/Updown7/Ui/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Newphoto{
  String photo;
  Newphoto(this.photo);
}


class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  List<Newphoto> list = [
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),
    Newphoto(AppAssetsU.imageAvatar0),

  ];
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;

    return InkWell(
      child: Image.asset(AppAssetsU.imageAvatar0, height: heights / 15),
      onTap: (){
        showDialog(context: context,
            builder: (ctx) => SingleChildScrollView(child:AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
              content: Builder(builder: (context){
                return Container(
                  // height: heights/1.5,
                  height: heights/1.2,
                  width: heights/1.9,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundNewbg),fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            child: Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/20),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          )
                      ),
                      // Container(
                      //   height: 200,
                      //   width: 300,
                      //   child: ListView.builder(
                      //     // shrinkWrap: true,
                      //     //   physics: NeverScrollableScrollPhysics(),
                      //       itemCount: 1,
                      //       itemBuilder: (BuildContext, int index) {
                      //         return ListTile(
                      //           leading: CircleAvatar(
                      //             radius: heights / 12,
                      //             backgroundImage: AssetImage(
                      //                 AppAssetsU.imageAvatar0),
                      //           ),
                      //
                      //           title: Text("Apple",
                      //               style: GoogleFonts.playfairDisplay(
                      //                   textStyle: TextStyle(
                      //                       color: Colors.white))),
                      //           subtitle: Text("ID:57146613",
                      //               style: GoogleFonts.playfairDisplay(
                      //                   textStyle: TextStyle(
                      //                       color: Colors.white))),
                      //           trailing: Icon(
                      //               Icons.text_snippet, color: Colors.yellow),
                      //         );
                      //       })
                      // ),

                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Row(
                          children: [
                           CircleAvatar(
                             radius: heights/30,
                             child: Image.asset(AppAssetsU.imageAvatar0),
                           ),
                            Text("Apple \nID:57146613", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))),
                            InkWell(
                              child:Icon(Icons.text_snippet, color: Colors.yellow) ,
                              onTap: (){
                                showDialog(context: context,
                                    builder: (ctx) => SingleChildScrollView(child:AlertDialog(
                                      backgroundColor: Colors.transparent,
                                      insetPadding: EdgeInsets.zero,
                                      contentPadding: EdgeInsets.zero,
                                      content: Builder(builder: (context){
                                        return Container(
                                          height: heights/2.4,
                                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundNewbg),fit: BoxFit.fill)),
                                          child: Column(
                                            children: [
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: InkWell(
                                                    child: Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/20),
                                                    onTap: (){
                                                      Navigator.pop(context);
                                                    },
                                                  )
                                              ),
                                              Center(child: Text("Change Username", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)))),
                                              // Text("Change UserName", style:GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/30))),
                                              Padding(
                                                padding: EdgeInsets.all(heights/30),
                                                child: TextField(
                                                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                                  hintText: "Apple",
                                                  hintStyle:  GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                    labelStyle: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40)),
                                                    fillColor: Colors.grey,
                                                    filled: true
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                    },
                                                  child: Image.asset(AppAssetsU.buttonsSubmit,height: heights/15)
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                    )
                                    )
                                );
                              }
                              )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: heights/50,left: heights/40),
                        child: Row(
                          children: [
                            InkWell(
                                child:Image.asset(AppAssetsU.buttonsChange,height: heights/30),
                              onTap: (){
                                  showDialog(context: context,
                                      builder: (ctx) => AlertDialog(
                                        backgroundColor: Colors.transparent,
                                        insetPadding: EdgeInsets.zero,
                                        contentPadding: EdgeInsets.zero,
                                        content: Builder(builder: (context){
                                          return Container(
                                            height: heights/2,
                                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundNewbg),fit: BoxFit.fill)),
                                            child: Column(
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
                                                Center(child: Text("Select Image", style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: heights/30,color: Colors.white)))),
                                                // Text("Select Image", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/25))),
                                                Container(
                                                  height: heights/4,
                                                  width: heights/2,
                                                  child: GridView.builder(
                                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 3,
                                                        crossAxisSpacing: 10,
                                                        mainAxisSpacing: 10,
                                                        childAspectRatio: widths / heights,
                                                          ),
                                                      itemCount: list.length,
                                                      itemBuilder: (BuildContext ctx, index) {
                                                        return CircleAvatar(
                                                          child: Image.asset(list[index].photo),
                                                        );
                                                      }),
                                                ),
                                                TextButton(
                                                    onPressed: (){
                                                      Navigator.pop(context);

                                                    },
                                                    child: Image.asset(AppAssetsU.buttonsSavesave,height: heights/15)
                                                )

                                              ],
                                            ),
                                          );
                                        }),
                                      )
                                  );

                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: heights/30),
                              child: Container(
                                width: heights/6,
                                decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text("10", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: heights/20,),
                      Container(
                        width: heights/2.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Username', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Text('Apple', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),

                          ],
                        ),
                      ),
                      Container(
                        width: heights/2.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Mobile No.', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Text('1234567897', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/2.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Email Id', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                            Spacer(),
                            Text('apple@gmail.com', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/2.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Bank Account', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/2.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('Paytm Account', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                          ],
                        ),
                      ),
                      Container(
                        width: heights/2.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(width: heights/40,),
                            Text('UPI', style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: heights/40))),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              )
            )
            )
        );
      }

    );
  }
}
