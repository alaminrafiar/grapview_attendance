import 'package:flutter/material.dart';
import 'package:grapview_attendance/Pages/Splash_Screen.dart';

void main() {
  runApp(const GrapViewAttendance());
}
class GrapViewAttendance extends StatelessWidget {
  const GrapViewAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrapView',
      theme: ThemeData.light(),
      home: const SplashScreen(),
    );
  }
}


