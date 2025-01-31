import 'package:flutter/material.dart';
class CustomDashedIcon extends StatelessWidget {
  const CustomDashedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(30, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              height: 2,
              color: Colors.grey.shade400,
            ),
          ),
        );
      }),
    );
  }
}
