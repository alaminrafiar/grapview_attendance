import 'package:flutter/material.dart';
import 'package:grapview_attendance/Pages/Attendance/After%20Change%20Password.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 150),
          child: Column(
            children: [
              Center(child: Image.asset("Assets/Images/Logo.png",height: 178,width: 186,)),
              Text("Set Your New Password",style: TextStyle(color: Color(0xFF192855)),),
              SizedBox(height: 20,),
              Text("Old password",style: TextStyle(color: Color(0xFF949494)),),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    hintText: "**********",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("New password",style: TextStyle(color: Color(0xFF949494)),),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    hintText: "**********",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Retype New password",style: TextStyle(color: Color(0xFF949494)),),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    hintText: "**********",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) =>  PasswordSet()));
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
            ],
          ),
        ),
      ),
    );
  }
}
