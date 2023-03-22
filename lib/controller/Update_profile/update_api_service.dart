import 'dart:convert';

import 'package:grapview_attendance/controller/Update_profile/update_constants.dart';
import 'package:grapview_attendance/controller/Update_profile/update_key.dart';
import 'package:grapview_attendance/model/authModel.dart';
import 'package:http/http.dart' as http;


class UpdateApiService {
  static Future<AuthUpdate?> updateM(
    String name,
    String email,
    String country,
    String phone_dial_code,
    String phone,
    String gender,
  ) async {
    var response = await http.put(Uri.parse(UpdateConstants.updateUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
          "api_key": UpdateConstants.updateApiKey,
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZmFmZmQ2MTVlZjJhZTY4OTYxZDVhNSIsIm5hbWUiOiJNZCBBbGFtaW4iLCJyb2xlIjoiZW1wbG95ZWUiLCJpYXQiOjE2Nzk0MjYwMjEsImV4cCI6MTY3OTUxMjQyMX0.0RnRe9S9olwk6GB0rCiZVUq22l84SAQESBlzQ6bPsEk"
        },
        body: jsonEncode({
          UpdateKeyWord.name: name,
          UpdateKeyWord.email: email,
          UpdateKeyWord.country: country,
          UpdateKeyWord.dail_code: phone_dial_code,
          UpdateKeyWord.phone: phone,
          UpdateKeyWord.gender: gender,
        }));
    if(response.statusCode == 200){
      AuthUpdate authUpdate = AuthUpdate.fromJson(jsonDecode(response.body));
          return authUpdate;
    }else{
      print("error");
    }
  }
}
