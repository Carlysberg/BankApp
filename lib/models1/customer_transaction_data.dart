import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class CustomerTransactionData {
  final String customerID;
  final String transactionDate;
  final int transactionAmount;
  final String transactionDirection;
  final String transactionNarration;

  CustomerTransactionData({
    required this.customerID,
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionDirection,
    required this.transactionNarration,
  });

  factory CustomerTransactionData.fromJson(Map<String, dynamic> json) {
    return CustomerTransactionData(
      customerID: json['customerID'],
      transactionDate: json['transactionDate'],
      transactionAmount: json['transactionAmount'],
      transactionDirection: json['transactionDirection'],
      transactionNarration: json['transactionNarration'],
    );
  }
}

Future<List<CustomerTransactionData>> loadJsonData() async {
  final String jsonString = await rootBundle.loadString('assets/customer_data.json');
  final List<dynamic> jsonData = json.decode(jsonString)['customerTransactionData'];
  return jsonData.map((item) => CustomerTransactionData.fromJson(item)).toList();
}