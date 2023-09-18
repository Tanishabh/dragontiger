//chips animation 7updown

import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';

class Secondone extends StatefulWidget {
  const Secondone({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  SecondoneState createState() => SecondoneState();
}

class SecondoneState extends State<Secondone> {
  // We can detect the location of the cart by this  GlobalKey<CartIconKey>
  GlobalKey<CartIconKey> cartKey = GlobalKey<CartIconKey>();
  late Function(GlobalKey) runAddToCartAnimation;
  var _cartQuantityItems = 0;

  @override
  Widget build(BuildContext context) {
    return AddToCartAnimation(
      // To send the library the location of the Cart icon
      cartKey: cartKey,
      height: 30,
      width: 30,
      opacity: 0.85,
      dragAnimation: const DragToCartAnimationOptions(
        rotation: true,
      ),
      jumpAnimation: const JumpAnimationOptions(),
      createAddToCartAnimation: (runAddToCartAnimation) {
        // You can run the animation by addToCartAnimationMethod, just pass trough the the global key of  the image as parameter
        this.runAddToCartAnimation = runAddToCartAnimation;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.transparent,
          centerTitle: false,
          actions: [
        //     //  Adding 'clear-cart-button'
        //     IconButton(
        //       icon: const Icon(Icons.cleaning_services),
        //       onPressed: () {
        //         _cartQuantityItems = 0;
        //         cartKey.currentState!.runClearCartAnimation();
        //       },
        //     ),
        //     const SizedBox(width: 16),
            AddToCartIcon(
              key: cartKey,
              icon: const Icon(Icons.shopping_cart),
              badgeOptions: const BadgeOptions(
                active: true,
                backgroundColor: Colors.transparent,
              ),
            ),
        //     const SizedBox(
        //       width: 16,
        //     )
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(15,
            (index) => AppListItem(
              onClick: listClick,
              index: index,
            ),
          ),
        ),

    )
    );
  }

  void listClick(GlobalKey widgetKey) async {
    await runAddToCartAnimation(widgetKey);
    await cartKey.currentState!
        .runCartAnimation((++_cartQuantityItems).toString());
  }
}

class AppListItem extends StatelessWidget {
  final GlobalKey widgetKey = GlobalKey();
  final int index;
  final void Function(GlobalKey) onClick;

  AppListItem({super.key, required this.onClick, required this.index});
  @override
  Widget build(BuildContext context) {

    Container mandatoryContainer = Container(
      key: widgetKey,
      width: 60,
      height: 30,
      color: Colors.transparent,
      child: Image.asset(AppAssetsU.chipsCoin50, width: 60, height: 60),
    );

    return ListTile(
      onTap: () => onClick(widgetKey),
      leading: mandatoryContainer,

    );
  }
}
