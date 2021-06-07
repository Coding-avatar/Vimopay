// To parse this JSON data, do
//
//     final ifscResponseData = ifscResponseDataFromJson(jsonString);

import 'dart:convert';

IfscResponseData ifscResponseDataFromJson(String str) =>
    IfscResponseData.fromJson(json.decode(str));

String ifscResponseDataToJson(IfscResponseData data) =>
    json.encode(data.toJson());

class IfscResponseData {
  IfscResponseData({
    this.success,
    this.data,
  });

  bool? success;
  Data? data;

  factory IfscResponseData.fromJson(Map<String, dynamic> json) =>
      IfscResponseData(
        success: json["success"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.isValid,
    this.accountName,
    this.accountNumber,
    this.ifsc,
  });

  bool? isValid;
  String? accountName;
  String? accountNumber;
  String? ifsc;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        isValid: json["is_valid"],
        accountName: json["account_name"],
        accountNumber: json["account_number"],
        ifsc: json["ifsc"],
      );

  Map<String, dynamic> toJson() => {
        "is_valid": isValid,
        "account_name": accountName,
        "account_number": accountNumber,
        "ifsc": ifsc,
      };
}
