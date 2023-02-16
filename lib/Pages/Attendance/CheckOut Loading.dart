import 'package:flutter/material.dart';
import 'package:grapview_attendance/Pages/Attendance/Attendance.dart';
import 'package:grapview_attendance/Pages/Attendance/Change%20Password.dart';
import 'package:grapview_attendance/Pages/LoginPage/LoginPage.dart';
import 'package:grapview_attendance/Pages/Profile/Profile.dart';

class CheckingOut extends StatefulWidget {
  const CheckingOut({Key? key}) : super(key: key);

  @override
  State<CheckingOut> createState() => _CheckingOutState();
}

class _CheckingOutState extends State<CheckingOut> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("Assets/Images/Logo6.png",height: 10,width: 10,),
          onTap: (){
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('CHECK OUT',style: TextStyle(color: Color(0xFF192855),fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xFFFE8100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 5,color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("Assets/Images/Rafi1.jpg"),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Muksitur Rahman Rafi",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    const Text("EID : GV003",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) =>  const Profile()));
                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                    ],
                  ),
                  child: const Center(
                    child: Text("Profile",style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) =>  const ChangePassword()));
                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                    ],
                  ),
                  child: const Center(
                    child: Text("Change Password",style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              const SizedBox(height: 270),
              TextButton(onPressed: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (c) =>  const LoginPage()));
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("LogOut",style: TextStyle(color: Color(0xFF192855),fontWeight: FontWeight.bold),),
                    Icon(Icons.forward),
                  ],
                ),
              ),
              Image.asset("Assets/Images/Logo.png",height: 50,width: 50,),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(40)),
            const Center(child: Text("February 14, 2023",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xFF192855)),)),
            const Text("5 : 30  PM",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color(0xFF192855)),),
            const SizedBox(height: 10,),
            const Text("Hello Muksitur",style: TextStyle(fontSize: 20,color: Color(0xFFFE8100)),),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (c) =>  const Attendance()));
              },
              child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5,color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset("Assets/Images/Logo8.png",fit: BoxFit.cover,)
              ),
            ),
            const SizedBox(height: 20,),
            const Text("CHECKING OUT...",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Color(0xFF192855)),),
          ],
        ),
      ),

    );
  }
}
