import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Newcoins {
  String photo;
  String title;
  String subtitle;
  String money;
  Newcoins(this.photo, this.title, this.subtitle, this.money);
}

class Mymoney extends StatefulWidget {
  const Mymoney({super.key});

  @override
  State<Mymoney> createState() => _MymoneyState();
}

class _MymoneyState extends State<Mymoney> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;

    List<Newcoins> addAmount = [
      Newcoins(AppAssetsU.buttonsRupeeIcon, "20", "Coins", AppAssetsU.buttonsAddmoney),
      Newcoins(AppAssetsU.buttonsRupeeIcon, "50", "Coins", AppAssetsU.buttonsAddmoney),
      Newcoins(AppAssetsU.buttonsRupeeIcon, "100", "Coins", AppAssetsU.buttonsAddmoney),
      Newcoins(AppAssetsU.buttonsRupeeIcon, "150", "Coins", AppAssetsU.buttonsAddmoney),
      Newcoins(AppAssetsU.buttonsRupeeIcon, "250", "Coins", AppAssetsU.buttonsAddmoney),
      Newcoins(AppAssetsU.buttonsRupeeIcon, "300", "Coins", AppAssetsU.buttonsAddmoney),
      Newcoins(AppAssetsU.buttonsRupeeIcon, "500", "Coins", AppAssetsU.buttonsAddmoney),

    ];
    return InkWell(
      child: Icon(Icons.add_circle,color: Colors.white,),
      onTap: () {
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: EdgeInsets.zero,
                  contentPadding: EdgeInsets.zero,
                  content: Builder(builder: (context) {
                    return Stack(
                      children: [
                        Container(
                            height: heights / 1.2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AppAssetsU.backgroundNewbg ),
                                    fit: BoxFit.fill)),
                            child: Column(
                              children: [
                                Center(
                                    child: Text("Shop",
                                        style: GoogleFonts.playfairDisplay(
                                            textStyle: TextStyle(
                                                fontSize: heights / 30,
                                                color: Colors.white)))),
                                Container(
                                    height: heights/1.4,
                                    width: heights / 2,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: addAmount.length,
                                        itemBuilder: (BuildContext, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Card(child: Container(
                                              height: heights * 0.07,
                                              child: ListTile(
                                                  leading: Padding(padding: const EdgeInsets.only(bottom: 20),
                                                    child: Image.asset(
                                                        addAmount[index].photo,
                                                        height: heights * 0.04),
                                                  ),
                                                  title: Padding(
                                                    padding: const EdgeInsets.only(left: 50),
                                                    child: Text(addAmount[index].title, style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.black, fontSize: heights * 0.02))),
                                                  ),
                                                  subtitle: Padding(padding: const EdgeInsets.only(bottom: 30,left: 40),
                                                    child: Text(
                                                        addAmount[index].subtitle,
                                                        style: GoogleFonts
                                                            .playfairDisplay(
                                                                textStyle: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        heights *
                                                                            0.02))),
                                                  ),
                                                  trailing: Padding(
                                                    padding: const EdgeInsets.only(
                                                        bottom: 20),
                                                    child: Image.asset(
                                                      addAmount[index].money,
                                                      height: heights / 20,
                                                    ),
                                                  )),
                                            )),
                                          );
                                        }))
                              ],
                            )
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
                        )
                      ],
                    );
                  }),
                ));
      },
    );
  }
}
