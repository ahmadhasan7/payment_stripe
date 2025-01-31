import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  final GlobalKey<FormState> globalKey ;
  final AutovalidateMode autovalidateMode;
  CustomCreditCard({super.key, required this.globalKey, required this.autovalidateMode});
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (creditCardBrand) {},
        ),
        CreditCardForm(
          themeColor: Colors.blue,
          autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel) {
              cardNumber = creditCardModel.cardNumber;
              expiryDate = creditCardModel.expiryDate;
              cvvCode = creditCardModel.cvvCode;
              cardHolderName = creditCardModel.cardHolderName;
              showBackView = creditCardModel.isCvvFocused;

              setState(() {});
            },
            formKey: widget.globalKey),
      ],
    );
  }
}
