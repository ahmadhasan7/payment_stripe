import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/payment_details_view.dart';
import 'package:payment/Features/presentation/views/widget/custom_buttom.dart';
import 'package:payment/Features/presentation/views/widget/total_count.dart';
import 'package:payment/core/constant/styles.dart';

import 'order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(child: Center(child: Image.asset("assets/images/cart.png"))),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: "Order Subtotal",
            subTitle: r"450$",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: "Discount",
            subTitle: r"0$",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: "Shipping",
            subTitle: r"8$",
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(),
          const TotalCount(
            title: "TotalCount",
            subtitle: r"140$",
          ),
          const SizedBox(
            height: 22,
          ),
          CustomButtom(
              title: "Complete Payment",
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PaymentDetailsView();
                }));
              }),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
