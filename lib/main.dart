import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/my_cart_view.dart';
void main() {
  runApp(const CheckoutApp());
}
class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
//create Payment intent(amount,currancy)
//init payment sheet need paymentIntentClientSecret from create-1
//presentPaymentSheet

