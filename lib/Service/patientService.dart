import 'dart:convert';

import 'package:covid_app/Model/patientModel.dart';
import 'package:http/http.dart' as http;
class PatientApiService{
  Future<List<Patient>> getPatient() async{
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3011/api/patient/viewall");
    var response = await client.get(apiUrl);
    if(response.statusCode==200){
      return patientFromJson(response.body);
    }
    else{
      return [];
    }
  }
}