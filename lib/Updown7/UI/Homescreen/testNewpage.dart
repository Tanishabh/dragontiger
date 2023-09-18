import 'package:flutter/material.dart';

import '../constant/images.dart';
import 'newpage.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  var _currentValue = 0.5;
  @override
  Widget build(BuildContext context) {

    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: heights/20,
              left: heights/30,
              child: Container(
                  child: FAProgressBar(
                    backgroundColor:Colors.white,
                    progressColor:Colors.transparent,
                    child: Image.asset(AppAssetsU.chipsCoin50),
                    currentValue: _currentValue,
                    displayText: '%',
                  )
                  )
              )
          ])


    );
  }
}
