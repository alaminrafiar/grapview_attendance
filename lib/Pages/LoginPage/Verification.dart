import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grapview_attendance/Pages/LoginPage/LoginPage.dart';
import 'package:grapview_attendance/Pages/LoginPage/Reset%20Password.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 150),
          child: Center(
            child: Column(
              children: [
                Image.asset("Assets/Images/Logo.png",height: 178,width: 186,),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("We have sent a verification code to 01XXXXXXXXX Put the OTP to verify.",style: TextStyle(color: Color(0xFF192855),fontSize: 15),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't get code?",style: TextStyle(color: Color(0xFF192855),fontSize: 15),),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) =>  Verify()));
                    }, child: Text("Resend",style: TextStyle(color: Color(0xFF192855),fontSize: 18,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200,spreadRadius: 1,blurRadius: 0)
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade200,width: 1),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                            ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 1),
                              ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 1),
                              ),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 1),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100)),
                              ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) =>  ResetPassword()));
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade200,spreadRadius: 1,blurRadius: 0)
                      ],
                    ),
                    child: Center(
                      child: Text("Verify",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 200,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Back to",style: TextStyle(fontSize: 18,color: Colors.grey),),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) =>  LoginPage()));
                    }, child: Text("Log In",style: TextStyle(color: Color(0xFF192855),fontSize: 18),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
