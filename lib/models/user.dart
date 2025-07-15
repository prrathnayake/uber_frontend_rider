import 'paymentDetails.dart';
import 'bankDetails.dart';

class User {
  String firstName;
  String middleName;
  String lastName;
  String countryCode;
  String mobileNumber;
  String address;
  String email;
  String username;
  String passwordHash;
  String role;
  String preferredLanguage;
  String currency;
  String country;
  PaymentDetails paymentDetails;
  BankDetails bankDetails;

  User({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.countryCode,
    required this.mobileNumber,
    required this.address,
    required this.email,
    required this.username,
    required this.passwordHash,
    required this.role,
    required this.preferredLanguage,
    required this.currency,
    required this.country,
    required this.paymentDetails,
    required this.bankDetails,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'] ?? '',
      middleName: json['middleName'] ?? '',
      lastName: json['lastName'] ?? '',
      countryCode: json['countryCode'] ?? '',
      mobileNumber: json['mobileNumber'] ?? '',
      address: json['address'] ?? '',
      email: json['email'] ?? '',
      username: json['username'] ?? '',
      passwordHash: json['passwordHash'] ?? '',
      role: json['role'] ?? '',
      preferredLanguage: json['preferredLanguage'] ?? '',
      currency: json['currency'] ?? '',
      country: json['country'] ?? '',
      paymentDetails: PaymentDetails.fromJson(json['paymentDetails'] ?? {}),
      bankDetails: BankDetails.fromJson(json['bankDetails'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'countryCode': countryCode,
      'mobileNumber': mobileNumber,
      'address': address,
      'email': email,
      'username': username,
      'passwordHash': passwordHash,
      'role': role,
      'preferredLanguage': preferredLanguage,
      'currency': currency,
      'country': country,
      'paymentDetails': paymentDetails.toJson(),
      'bankDetails': bankDetails.toJson(),
    };
  }
}
