import 'package:dragontiger/Updown7/UI/Homescreen/newpage.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/images.dart';

class playertwo extends StatefulWidget {
  const playertwo({super.key});

  @override
  State<playertwo> createState() => _playertwoState();
}

class _playertwoState extends State<playertwo> {
  @override
  Widget build(BuildContext context) {

    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 500,
             child: Container(
               height: 100,
               width: 200,
                child: CircleAvatar(
                       radius:heights/12,
                   backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
                   backgroundImage: AssetImage(AppAssetsU.chipsVip0),
              child: CircleAvatar(
                  radius: heights / 15,
                  child: Image.asset(AppAssetsU.imageAvatar1, height: heights / 7)),
            ),

            )
          )
        ],
      ),
    );
  }
}
