import 'dart:convert';


import 'package:grapview_attendance/controller/change_pass_controller/c_pass_key.dart';
import 'package:grapview_attendance/model/auth_change.dart';
import 'package:http/http.dart' as http;

import 'c_pass_constants.dart';


class ChangePassApiService {
  static Future<AuthChangepass?> methodChPas(
      String oldpass, String newpass, String repass) async {
    var response = await http.post(Uri.parse(ChangePassConstants.urlchangepass),
        headers: <String, String>{
          'Content-Type': 'application/json',
          "api_key": ChangePassConstants.apikeyChange,
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZmFmZmQ2MTVlZjJhZTY4OTYxZDVhNSIsIm5hbWUiOiJhYnVsIiwicm9sZSI6ImVtcGxveWVlIiwiaWF0IjoxNjc5MzMxNjMxLCJleHAiOjE2Nzk0MTgwMzF9.KR9-0Y-SPl3_E3tlFGIbtRTU5OEM8q7qqaHk7MCvvVI"

        },
        body: jsonEncode({
          ChangeKeyWords.old_password: oldpass,
          ChangeKeyWords.new_password: newpass,
          ChangeKeyWords.re_typed_new_password: repass,
        }));
    if (response.statusCode==200){
      AuthChangepass authChangePass = AuthChangepass.fromJson(jsonDecode(response.body));
      return authChangePass;
    }else{
      print("error");
    }
  }
}
