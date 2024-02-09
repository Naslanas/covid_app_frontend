// To parse this JSON data, do
//
//     final patient = patientFromJson(jsonString);

import 'dart:convert';

List<Patient> patientFromJson(String str) => List<Patient>.from(json.decode(str).map((x) => Patient.fromJson(x)));

String patientToJson(List<Patient> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Patient {
  String name;
  String phone;
  String address;
  String symptoms;
  String status;

  Patient({
    required this.name,
    required this.phone,
    required this.address,
    required this.symptoms,
    required this.status,
  });

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    name: json["name"],
    phone: json["phone"],
    address: json["address"],
    symptoms: json["symptoms"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "phone": phone,
    "address": address,
    "symptoms": symptoms,
    "status": status,
  };
}
