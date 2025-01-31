import 'package:flutter/material.dart';

import '../../../../core/constant/styles.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const CustomButtom({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 70,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            onPressed: onPressed,
            child: Text(title,
                style: Styles.style24.copyWith(color: Colors.black))));
  }
}
