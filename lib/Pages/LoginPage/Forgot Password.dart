import 'package:flutter/material.dart';
import 'package:grapview_attendance/Pages/LoginPage/LoginPage.dart';
import 'package:grapview_attendance/Pages/LoginPage/Verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 150),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset("Assets/Images/Logo.png",height: 178,width: 186,),
                SizedBox(height: 5,),
                Text("Forgot Password ? Not a Problrm",style: TextStyle(color: Color(0xFF192855),fontSize: 18),),
                SizedBox(height: 10,),
                Text("Input your Phone Number Bellow",style: TextStyle(color: Color(0xFF949494),fontSize: 14),),
                SizedBox(height: 40,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "+8801XXXXXXXXX",
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 110),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter Phone Number";
                    }
                  },
                ),
                SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    if(_formkey.currentState!.validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) =>  Verify()));
                      emailController.clear();
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                      ],
                    ),
                    child: Center(
                      child: Text("Next",style: TextStyle(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
