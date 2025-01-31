import 'package:flutter/material.dart';

import '../../../../core/constant/styles.dart';
class TotalCount extends StatelessWidget {
  final String title;
  final String subtitle;

  const TotalCount({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style24.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Text(
          subtitle,
          style: Styles.style24.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
