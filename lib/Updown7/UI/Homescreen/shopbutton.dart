// import 'dart:html';

import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import '../constant/color.dart';

class Newone {
  //Class for grid view
  String Shoppic;
  Newone(this.Shoppic);
}

class Shopbutton extends StatefulWidget {
  const Shopbutton({super.key});

  @override
  State<Shopbutton> createState() => _ShopbuttonState();
}

class _ShopbuttonState extends State<Shopbutton> {
  @override
  Widget build(BuildContext context) {
    List<Newone> list = [
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
      Newone(AppAssetsU.imageBoxShop2),
    ];

    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: heights / 1,
        width: widths,
        child: Stack(children: [
          Positioned(
            bottom: heights / 19,
            left: heights / 14,
            child: Container(
                height: heights / 1.2,
                width: heights / 0.6,
                child: Image.asset(
                  AppAssetsU.imageBg2,
                  fit: BoxFit.fill,
                )),
          ),

          //text
          Positioned(
              top: heights / 8,
              left: heights / 2.5,
              child: Container(
                child: Text(
                    "If you are in the recharge process, the recharge page prompts\n an error and the recharge cannot be completed, you can \n recharge through other channels.",
                    style: TextStyle(
                        fontSize: 10,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.bold)),
              )),

          //black button
          Positioned(
              top: heights / 8,
              right: heights / 9,
              child: Image.asset(AppAssetsU.buttonsBgShop2Enter,
                  height: heights / 14)),
          Positioned(
              top: heights / 8,
              right: heights / 2.2,
              child: Text("Current\nbalance",
                  style: TextStyle(fontSize: 10, color: AppColor.blackbutton))),

          //cross button
          Positioned(
              top: heights / 90,
              right: heights / 45,
              child: IconButton(icon: Image.asset(AppAssetsU.buttonsRedReject),
                  onPressed: () {
                    Navigator.pop(context);
                  })
          ),


          //record with chip(inside)
          Positioned(
              bottom: heights / 9,
              left: heights / 7,
              child: Container(
                  child: InkWell(
                    child: Row(
                     children: [
                      Image.asset(AppAssetsU.chipsIcChip1, height: heights / 20),
                      Text("Record",
                        style: TextStyle(fontSize: 15, color: AppColor.record))
                  ],
                   ),
                  onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            backgroundColor: AppColor.middleContainercolor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            content: Builder(
                              builder: (context) {
                                var height = MediaQuery.of(context).size.height;
                                var width = heights * 2.1;
                                return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            child: InkWell(child: Icon(Icons.close,color: AppColor.recordiconcolor),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                })
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            child: Row(
                                              children: [
                                                SizedBox(width: height/30),
                                                Text('Payment', style: TextStyle(fontSize: height/25, color: AppColor.recordChipRow1)),
                                                SizedBox(width: height/10),
                                                Text('Withdraw', style: TextStyle(fontSize: height/25, color: AppColor.recordChipRow1)),
                                                SizedBox(width: height/10),
                                                Text('Other', style: TextStyle(fontSize: height/25, color:AppColor.recordChipRow1)),
                                              ],
                                            ),
                                            decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAssetsU.backgroundIcJackpotStripGreen)),fit: BoxFit.fill)),

                                          )
                                      ),



                                      //row1
                                      Row(
                                        children: [
                                          Text('Order number', style: TextStyle(fontSize: height /30, color: AppColor.recordChipRow1)),
                                          Spacer(),
                                          Text('Amount', style: TextStyle(fontSize: height / 30, color: AppColor.recordChipRow1)),
                                          Spacer(),
                                          Text('Time', style: TextStyle(fontSize: height / 30, color:AppColor.recordChipRow1)),
                                          Spacer(),
                                          Text('Status', style: TextStyle(fontSize: height / 30, color:AppColor.recordChipRow1)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height / 2.5,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: height/25,
                                          ),
                                          Text('Previous',style: TextStyle(fontSize: height / 30, color: AppColor.recordButtonInsideEND)),
                                          SizedBox(
                                            width: height/6,
                                          ),
                                          Text('0',style: TextStyle(fontSize: height/30,color: AppColor.recordButtonInsideEND)),
                                          SizedBox(
                                            width: height/6,
                                          ),
                                          Text('Next', style: TextStyle(fontSize: height / 30, color:AppColor.recordButtonInsideEND))
                                        ],
                                      ),

                                    ],
                                  );

                                },
                            ),
                          )
                  );
                },
              )
              )
          ),

          //middle portion
          Padding(
            padding: EdgeInsets.fromLTRB(
                heights / 2, heights / 4.4, heights / 8, heights / 20),
            child: DefaultTabController(
              length: 4,
              child: Column(children: <Widget>[
                Container(
                  color: AppColor.middleContainercolor,
                  child: TabBar(
                    indicatorColor: AppColor.tabbarIndicator,
                    tabs: [
                      Tab(
                          child: Text("UPI-ZIP",
                              style: TextStyle(
                                  fontSize: 15, color: AppColor.tabbarAll))),
                      Tab(
                        child: Text("UPI-DIDA",
                            style: TextStyle(
                                fontSize: 15, color: AppColor.tabbarAll)),
                      ),
                      Tab(
                        child: Text("UPI-HM",
                            style: TextStyle(
                                fontSize: 15, color: AppColor.tabbarAll)),
                      ),
                      Tab(
                        child: Text("UPI-OK",
                            style: TextStyle(
                                fontSize: 15, color: AppColor.tabbarAll)),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    Container(
                        color: AppColor.tabbarviewContainerALL,
                        child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 1.0,
                              mainAxisSpacing: 2.0,
                              childAspectRatio: widths / heights,
                            ),
                            itemCount: list.length,
                            itemBuilder: (BuildContext, int index) {
                              return GridTile(
                                  child: Image.asset(list[index].Shoppic));
                            })),
                    Container(
                        color: AppColor.tabbarviewContainerALL,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 1.0,
                              mainAxisSpacing: 2.0,
                              childAspectRatio: widths / heights,
                            ),
                            itemCount: list.length,
                            itemBuilder: (BuildContext, int index) {
                              return GridTile(
                                  child: Image.asset(list[index].Shoppic));
                            })),
                    Container(
                        color: AppColor.tabbarviewContainerALL,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 1.0,
                              mainAxisSpacing: 2.0,
                              childAspectRatio: widths / heights,
                            ),
                            itemCount: list.length,
                            itemBuilder: (BuildContext, int index) {
                              return GridTile(
                                  child: Image.asset(list[index].Shoppic));
                            })),
                    Container(
                        color: AppColor.tabbarviewContainerALL,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 1.0,
                              mainAxisSpacing: 2.0,
                              childAspectRatio: widths / heights,
                            ),
                            itemCount: list.length,
                            itemBuilder: (BuildContext, int index) {
                              return GridTile(
                                  child: Image.asset(list[index].Shoppic));
                            })),
                  ],
                ))
              ]),
            ),
          ),

          //shop button
          Positioned(
              top: heights / 20,
              left: heights / 9,
              child: Image.asset(AppAssetsU.buttonsBuyChips)),

          //bottom portion
          Positioned(
            bottom: heights / 18,
            left: heights / 2,
            child: Container(
              height: heights / 5,
              width: widths / 1.8,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundTotalBetInput), fit: BoxFit.fill)),
            ),
          ),

          Positioned(
              bottom: heights / 5,
              left: heights / 1.1,
              child: Text("Add Chips", style: TextStyle(fontSize: 12, color: AppColor.bottomportionAll))),
          Positioned(
              bottom: heights / 7,
              left: heights / 1.7,
              child: Text("Principal", style: TextStyle(fontSize: 12, color: AppColor.bottomportionAll))),
          Positioned(
              bottom: heights / 7,
              left: heights / 1.3,
              child: Text("Bonus", style: TextStyle(fontSize: 12, color: AppColor.bottomportionAll))),
          Positioned(
              bottom: heights / 10.8,
              left: heights / 1.9,
              child: Image.asset(AppAssetsU.buttonsBgShop2Enter, height: heights / 18)),
          Positioned(
              bottom: heights / 10,
              right: heights / 1.2,
              child: Text("=", style: TextStyle(fontSize: 13, color: AppColor.bottomportionAll))),
          Positioned(
              bottom: heights / 10.2,
              right: heights / 2.3,
              child: Image.asset(AppAssetsU.buttonsBgShop2Enter, height: heights / 18)),
          Positioned(
              bottom: heights / 7,
              right: heights / 1.8,
              child: Text("NewAmount", style: TextStyle(fontSize: 12, color: AppColor.bottomportionAll))),
          Positioned(
              bottom: heights / 9.9,
              right: heights / 6,
              child: Image.asset(AppAssetsU.buttonsGoldAddBtn, height: heights / 10)),



                //deposit and support
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(heights / 6, heights / 8, heights / 30, heights / 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Deposit", style: TextStyle(fontSize: 15, color: AppColor.depositsupport)),

                  //support inside
                  Container(
                      child: TextButton(
                          child: Text("Support", style: TextStyle(fontSize: 15, color: AppColor.depositsupport)),
                          onPressed: () {
                            //text
                            Positioned(
                              top: heights /4,
                              left: heights /5,
                              child: Text("If you require any additional information, please contact our \n customer services."),
                            );

                            //just right button to text
                            Positioned(
                              top: heights / 7,
                              left: heights / 6,
                              child: Image.asset(AppAssetsU.buttonsBgShop2Enter,
                                  height: heights / 14),
                            );

                            //photo
                            Positioned(
                                top: heights / 5,
                                left: heights / 7,
                                child: Container(
                                  height: heights / 40,
                                  child: Row(
                                    children: [
                                      Image.asset(AppAssetsU.imageBoxShop2),
                                      Image.asset(AppAssetsU.imageBoxShop2)
                                    ],
                                  ),
                                ));

                            //bottom button
                            Positioned(
                              bottom: heights / 5,
                              left: heights / 7,
                              child: Image.asset(AppAssetsU.buttonsBgShop2Enter,
                                  height: heights / 14),
                            );
                            Positioned(
                              bottom: heights / 5,
                              left: heights / 7,
                              child: Image.asset(AppAssetsU.buttonsBtnRefresh),
                            );
                          }))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
