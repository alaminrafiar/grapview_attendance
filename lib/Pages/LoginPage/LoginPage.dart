import 'package:flutter/material.dart';
import 'package:grapview_attendance/Pages/Attendance/Attendance.dart';
import 'package:grapview_attendance/Pages/LoginPage/Forgot%20Password.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 150),
          child: Form(
            key: _formfield,
            child: Column(
              children: [
                Image.asset("Assets/Images/Logo.png",height: 178,width: 186,),
                SizedBox(height: 20,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Employee ID",
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 120),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                        borderRadius: BorderRadius.circular(100),
                    ),
                    border: InputBorder.none
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter Employee ID";
                    }
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Password",
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 120),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                      border: InputBorder.none,
                      suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (value){
                    if (value!.isEmpty){
                      return "Enter PAssword";
                    }
                    else if (passController.text.length<6){
                      return "Password Length Should be more than 6 characters";
                    }
                  },
                ),
                SizedBox(height: 60,),
                InkWell(
                  onTap: (){
                    if(_formfield.currentState!.validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) =>  Attendance()));
                      emailController.clear();
                      passController.clear();
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
                      child: Text("Login",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) =>  ForgotPassword()));
                }, child: Text("Fogot Password",style: TextStyle(color: Color(0xFF192855),fontSize: 18),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
