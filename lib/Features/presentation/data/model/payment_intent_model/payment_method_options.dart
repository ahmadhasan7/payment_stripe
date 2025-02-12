class PaymentMethodOptions {
	Map<String, dynamic>? card;
	Map<String, dynamic>? link;

	PaymentMethodOptions({this.card, this.link});

	factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
		return PaymentMethodOptions(
			card: json['card'] as Map<String, dynamic>?,
			link: json['link'] as Map<String, dynamic>?,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'card': card,
			'link': link,
		};
	}
}