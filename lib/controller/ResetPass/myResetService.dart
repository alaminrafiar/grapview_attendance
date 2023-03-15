import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:grapview_attendance/controller/const.dart';
import 'package:grapview_attendance/controller/key.dart';
import '../../model/AuthReset.dart';

class MyResetService{
  static Future<AuthReset?> mFetchUser (String id,) async{
    var response = await http.post(Uri.parse(MyApiService.resetApiUrl),headers: <String, String>{
      "Content-Type": "application/json",
      "api_key": MyApiService.resetApiKey,
    },
      body: jsonEncode({
        MyKey.e_id: id,
      }));
    if (response.statusCode == 200){
      AuthReset authReset = AuthReset.fromJson(jsonDecode(response.body));
      return authReset;
    }
    else {
      print("error");
    }
  }
}