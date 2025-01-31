import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widget/my_cart_view_body.dart';
import 'package:payment/core/constant/styles.dart';
class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("My Cart",style: Styles.style20,),
        centerTitle: true,
        leading:const  Icon(Icons.arrow_back_outlined),
      ),
      body:const MyCartViewBody(),
      );

  }
}
