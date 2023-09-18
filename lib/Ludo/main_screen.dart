import 'package:dragontiger/Ludo/widgets/board_widget.dart';
import 'package:dragontiger/Ludo/widgets/dice_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ludo_provider.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              BoardWidget(),
              Center(
                  child: SizedBox(
                width: 50,
                height: 50,
                child: DiceWidget(),
              )),
            ],
          ),

          //winner length decide how maney winner in the game
          Consumer<LudoProvider>(
            builder: (context, value, child) => value.winners.length == 1
                ? Container(
                    color: Colors.black.withOpacity(0.8),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/images/thankyou.gif"),
                          const Text("Thank you for playing 😙", style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center),
                          Text("The Winners is: ${value.winners.map((e) => e.name.toUpperCase()).join(", ")}", style: const TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center),
                          const Divider(color: Colors.white),
                          const Text("This game made with Flutter ❤️ by Mochamad Nizwar Syafuan", style: TextStyle(color: Colors.white, fontSize: 15), textAlign: TextAlign.center),
                          const SizedBox(height: 20),
                          const Text("Refresh your browser to play again", style: TextStyle(color: Colors.white, fontSize: 10), textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
