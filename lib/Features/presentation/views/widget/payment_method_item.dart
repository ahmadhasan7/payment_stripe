import 'package:flutter/material.dart';

import 'custom_payment_icon_metod.dart';
class PaymentMethodItem extends StatefulWidget {
  PaymentMethodItem({super.key});

  @override
  State<PaymentMethodItem> createState() => _PaymentMethodItemState();
}

class _PaymentMethodItemState extends State<PaymentMethodItem> {
  int activeIndex=0;
  List<String> ImageURL = const [
    "assets/images/123.png",
    "assets/images/Group.png",
    'assets/images/SVGRepo_iconCarrier.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: ImageURL.length,itemBuilder: (context, index) {
        return GestureDetector(onTap: (){
          activeIndex=index;
          setState(() {

          });
        },child: CustomPaymentIconButton(isActive: activeIndex==index, imageurl: ImageURL[index]));
      }),
    );
  }
}