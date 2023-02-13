import 'package:flutter/material.dart';
import 'package:grapview_attendance/Pages/LoginPage/All%20set.dart';
import 'package:grapview_attendance/Pages/LoginPage/LoginPage.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formfield = GlobalKey<FormState>();
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
                Text("Set Your New Password",style: TextStyle(color: Color(0xFF192855)),),
                SizedBox(height: 20,),
                Text("Type new password",style: TextStyle(color: Color(0xFF949494)),),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    hintText: "***********",
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 120),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 1),
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
                      return "Enter New Password";
                    }
                    else if (passController.text.length<6){
                      return "Password Length Should be more than 6 characters";
                    }
                  },
                ),
                SizedBox(height: 20,),
                Text("Retype new password",style: TextStyle(color: Color(0xFF949494)),),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    hintText: "***********",
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
                      return "Enter New Password";
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
                              builder: (c) =>  AllSet()));
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
                      child: Text("Save",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 140,),
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
