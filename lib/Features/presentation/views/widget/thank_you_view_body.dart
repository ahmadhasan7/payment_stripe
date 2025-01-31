import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widget/custom_circle_icon.dart';
import 'package:payment/Features/presentation/views/widget/total_count.dart';
import 'package:payment/core/constant/styles.dart';

import 'card_info_widget.dart';
import 'custom_complite_circle_icon.dart';
import 'custom_dashed_icon.dart';
import 'custom_item_info.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading:const  Icon(Icons.arrow_back_outlined),
        backgroundColor: Colors.transparent,

      ),
      body: Transform.translate(
        offset: const Offset(0, -18),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 22, right: 22, top: 50 + 25),
                  child: Column(
                    children: [
                      Text(
                        "Thank you!",
                        style: Styles.styleBold20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Your transaction was successful",
                        style: Styles.style20,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const CustomInfoItem(
                        title: "Date",
                        data: "01/24/2023",
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomInfoItem(
                        title: "Time",
                        data: "10:15 AM",
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomInfoItem(
                        title: "To",
                        data: "10:15 AM",
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TotalCount(title: "Total", subtitle: r"50.36$"),
                      const SizedBox(height: 25,),
                      const CardInfoWidget(),
                      const Spacer(),
                      const CustomRow(),
                      SizedBox(
                        height: (MediaQuery.of(context).size.height * 0.2 + 20)/2-40,
                      )
                    ],
                  ),
                ),
              ),
              CustomCircleIcon(left: -20),
              CustomCircleIcon(right: -20),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.2 + 20,
                  left: 40 + 8,
                  right: 40 + 8,
                  child: const CustomDashedIcon()),
              const CustomCompleteCircleIcon()
            ],
          ),
        ),
      ),
    );
  }
}
class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.barcode_reader,size: 40,),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 35),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text("PIAD",style: Styles.style20,),
        )
      ],
    );
  }
}

