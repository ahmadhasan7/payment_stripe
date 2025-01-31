import 'package:flutter/material.dart';
class CustomCircleIcon extends StatelessWidget {
   double? left;
   double? right;
   CustomCircleIcon({super.key,  this.left,  this.right});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.of(context).size.height*0.2,
        right:right ,
        left: left,
        child:const CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}
