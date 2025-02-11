class PaymentIntentInputModel{
  final String amount;
  final String currancy;

  PaymentIntentInputModel({required this.amount, required this.currancy});
  toJson(){
    return{
      'amount':amount,
      'currancy':currancy
    };
  }
}