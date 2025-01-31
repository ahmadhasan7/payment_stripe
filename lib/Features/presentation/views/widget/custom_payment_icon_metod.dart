import 'package:flutter/material.dart';
class CustomPaymentIconButton extends StatelessWidget {
  final bool isActive;
  final String imageurl;
  const CustomPaymentIconButton({super.key, required this.isActive, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color:isActive? Colors.green:Colors.white,
            blurRadius: 6,
            offset:const  Offset(1, 4),
            spreadRadius: 1,
          ),
        ],
        border: Border.all(color:isActive? Colors.green:Colors.grey, width: 1.5),
        borderRadius: BorderRadius.circular(10), // Corrected here
      ),
      child: Container(
        width: 90 ,
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
        child: Image.asset(imageurl,fit: BoxFit.scaleDown,),
      ),
    );
  }
}
