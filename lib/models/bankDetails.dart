class BankDetails {
  String bankName;
  String accountNumber;
  String ifsc;

  BankDetails({
    required this.bankName,
    required this.accountNumber,
    required this.ifsc,
  });

  factory BankDetails.fromJson(Map<String, dynamic> json) {
    return BankDetails(
      bankName: json['bankName'] ?? '',
      accountNumber: json['accountNumber'] ?? '',
      ifsc: json['ifsc'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bankName': bankName,
      'accountNumber': accountNumber,
      'ifsc': ifsc,
    };
  }
}