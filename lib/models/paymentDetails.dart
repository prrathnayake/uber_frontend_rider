class PaymentDetails {
  String paymentMethod;
  String cardNumber;
  String expiry;

  PaymentDetails({
    required this.paymentMethod,
    required this.cardNumber,
    required this.expiry,
  });

  factory PaymentDetails.fromJson(Map<String, dynamic> json) {
    return PaymentDetails(
      paymentMethod: json['paymentMethod'] ?? '',
      cardNumber: json['cardNumber'] ?? '',
      expiry: json['expiry'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentMethod': paymentMethod,
      'cardNumber': cardNumber,
      'expiry': expiry,
    };
  }
}
