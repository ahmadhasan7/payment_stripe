import 'package:flutter/material.dart';

import '../../../../core/constant/styles.dart';
class OrderInfoItem extends StatelessWidget {
  final String title;
  final String subTitle;
  const OrderInfoItem({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Styles.style20,),
        const Spacer(),
        Text(subTitle, style: Styles.style20,)
      ],
    );
  }
}
