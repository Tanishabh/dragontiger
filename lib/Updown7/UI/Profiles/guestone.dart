import 'package:dragontiger/Updown7/UI/Homescreen/chipTransfer.dart';
import 'package:dragontiger/Updown7/UI/Homescreen/newpage.dart';
import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import '../constant/color.dart';

class playerone extends StatefulWidget {
  const playerone({super.key});

  @override
  State<playerone> createState() => _playeroneState();
}

class _playeroneState extends State<playerone> {



  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: 100,
          //   width: 100,
          //   child: Positioned.fill(
          //       top: 100,
          //       child: Secondone(title: '',)
          //   ),
          // ),
          Positioned(
            child: Container(
             child: IconButton(onPressed: (){
               Secondone(title: "");
             },
               icon: CircleAvatar(
                 radius: heights/12,
                 backgroundImage: AssetImage(AppAssetsU.chipsVip0),
                 backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                    child: CircleAvatar(
                       radius: heights/15,
                       child: Image.asset(AppAssetsU.imageAvatar0, height: heights/7),
              ),
            ),
           ),
            )
          )
        ],
      ),
    );
  }

}