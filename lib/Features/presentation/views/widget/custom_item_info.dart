import 'package:flutter/material.dart';

import '../../../../core/constant/styles.dart';

class CustomInfoItem extends StatelessWidget {
  final String title;
  final String data;

  const CustomInfoItem({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Text(
          data,
          style: Styles.style18.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}