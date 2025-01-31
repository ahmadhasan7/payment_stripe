import 'package:flutter/material.dart';

import '../../../../core/constant/styles.dart';
class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsets.only(left: 20,top: 18,bottom: 18),
      width: double.infinity/2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset("assets/images/logo.png",fit: BoxFit.fill,),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Credit Card",style: Styles.style18,),
              Text("Mastercard **78 ",style: Styles.style18,)
            ],
          )
        ],
      ),
    );
  }
}
