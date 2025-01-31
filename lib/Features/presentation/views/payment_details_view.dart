import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widget/payment_details_view_body.dart';

import '../../../core/constant/styles.dart';
class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Payment Details",style: Styles.style20,),
        centerTitle: true,
        leading:const  Icon(Icons.arrow_back_outlined),

      ),
      body:  PaymentDetailsViewBody(),
    );
  }
}
