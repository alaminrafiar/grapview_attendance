import 'dart:convert';
import 'dart:io';

import 'package:grapview_attendance/controller/key.dart';
import 'package:grapview_attendance/model/AuthLogin.dart';
import 'package:http/http.dart' as http;

import '../const.dart';

class MyLoginService {
  static Future <AuthLogin?> mFetchUser (String id, String password)async{
    var response = await http.post(Uri.parse(MyApiService.loginApiUrl),headers: <String,String>{
      'Content-Type' : 'application/json',
      "api_key" : '5267556B58703273357638792F423F45',
    },
      body: jsonEncode({
        MyKey.employee_id: id,
        MyKey.password: password,
      })
    );
    if(response.statusCode == 200){
      AuthLogin authLogin = AuthLogin.fromJson(jsonDecode(response.body));
          return authLogin;
    }else{
      print('error');
    }
  }
}