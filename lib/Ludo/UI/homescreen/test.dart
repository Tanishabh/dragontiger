//
// import 'package:flutter/material.dart';
//
// // export 'src/liquid_circular_progress_indicator.dart';
// export 'src/liquid_linear_progress_indicator.dart';
// // export 'src/liquid_custom_progress_indicator.dart';
//
// class _AnimatedLiquidLinearProgressIndicator extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() =>
//       _AnimatedLiquidLinearProgressIndicatorState();
// }
//
// class _AnimatedLiquidLinearProgressIndicatorState
//     extends State<_AnimatedLiquidLinearProgressIndicator>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 12),
//     );
//
//     _animationController.addListener(() => setState(() {}));
//     _animationController.repeat();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final percentage = _animationController.value * 100;
//     return Center(
//       child: Container(
//         width: MediaQuery.of(context).size.width*0.12,
//         height: MediaQuery.of(context).size.height*0.15,
//         padding: EdgeInsets.symmetric(horizontal: 24.0),
//         child: RotatedBox(
//           quarterTurns: 135,
//
//           child: LiquidLinearProgressIndicator(
//             value: _animationController.value,
//             backgroundColor: Colors.transparent,
//             valueColor: AlwaysStoppedAnimation(percentage <=90?Colors.blue.withOpacity(0.7):Colors.red.withOpacity(0.7)),
//             borderRadius: 0.0,
//             borderColor: Colors.transparent,
//             borderWidth: 0,
//             center: Text(
//                 ''
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }