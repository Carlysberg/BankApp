// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  List<CustomerStaticDatum> customerStaticData;
  List<CustomerTransactionDatum> customerTransactionData;

  Welcome({
    required this.customerStaticData,
    required this.customerTransactionData,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    customerStaticData: List<CustomerStaticDatum>.from(json["customerStaticData"].map((x) => CustomerStaticDatum.fromJson(x))),
    customerTransactionData: List<CustomerTransactionDatum>.from(json["customerTransactionData"].map((x) => CustomerTransactionDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "customerStaticData": List<dynamic>.from(customerStaticData.map((x) => x.toJson())),
    "customerTransactionData": List<dynamic>.from(customerTransactionData.map((x) => x.toJson())),
  };
}

class CustomerStaticDatum {
  String customerId;
  String customerName;
  String gender;
  String title;

  CustomerStaticDatum({
    required this.customerId,
    required this.customerName,
    required this.gender,
    required this.title,
  });

  factory CustomerStaticDatum.fromJson(Map<String, dynamic> json) => CustomerStaticDatum(
    customerId: json["customerID"],
    customerName: json["customerName"],
    gender: json["gender"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "customerID": customerId,
    "customerName": customerName,
    "gender": gender,
    "title": title,
  };
}

class CustomerTransactionDatum {
  String customerId;
  String transactionDate;
  int transactionAmount;
  String transactionDirection;
  String transactionNarration;

  CustomerTransactionDatum({
    required this.customerId,
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionDirection,
    required this.transactionNarration,
  });

  factory CustomerTransactionDatum.fromJson(Map<String, dynamic> json) => CustomerTransactionDatum(
    customerId: json["customerID"],
    transactionDate: json["transactionDate"],
    transactionAmount: json["transactionAmount"],
    transactionDirection: json["transactionDirection"],
    transactionNarration: json["transactionNarration"],
  );

  Map<String, dynamic> toJson() => {
    "customerID": customerId,
    "transactionDate": transactionDate,
    "transactionAmount": transactionAmount,
    "transactionDirection": transactionDirection,
    "transactionNarration": transactionNarration,
  };
}
