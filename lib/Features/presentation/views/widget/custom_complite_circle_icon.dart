import 'package:flutter/material.dart';
class CustomCompleteCircleIcon extends StatelessWidget {
  const CustomCompleteCircleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        right: MediaQuery.of(context).size.width*0.32,
        top: -20,
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          radius: 44,
          child: const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.check,
              size: 40,
              color: Colors.white,
            ),
          ),
        ));
  }
}
