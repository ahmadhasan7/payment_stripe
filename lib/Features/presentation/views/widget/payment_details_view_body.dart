import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widget/custom_buttom.dart';
import 'package:payment/Features/presentation/views/widget/payment_method_item.dart';

import '../thank_you_view.dart';
import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodItem(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
              globalKey: globalKey, autovalidateMode: autovalidateMode),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 22),
              child: CustomButtom(
                title: "Complete Payment",
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();

                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {

                    });
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ThankYouView();
                        }));
                  }
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
