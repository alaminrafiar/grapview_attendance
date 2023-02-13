import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 5,color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Images/Rafi1.jpg"),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Muksitur Rahman Rafi",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("EID : GV003",style: TextStyle(color: Colors.white,fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Icon(Icons.email_outlined,color: Colors.orange,),
                SizedBox(width: 20,),
                Text("Email : muksitur35-466@diu.edu.bd",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Icon(Icons.phone_in_talk,color: Colors.orange,),
                SizedBox(width: 20,),
                Text("Phone No : +8801734128544",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Icon(Icons.date_range_outlined,color: Colors.orange,),
                SizedBox(width: 20,),
                Text("Date of Birth : 31/10/2000",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Icon(Icons.generating_tokens_rounded,color: Colors.orange,),
                SizedBox(width: 20,),
                Text("Gender : Male",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Icon(Icons.shopping_basket_outlined,color: Colors.orange,),
                SizedBox(width: 20,),
                Text("Demartment : Software Engineering",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Icon(Icons.dehaze_sharp,color: Colors.orange,),
                SizedBox(width: 20,),
                Text("Designation : Software Engineer Apprentice",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
              ],
            ),
            SizedBox(height: 150,),
            TextButton(
              onPressed: (){},
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit,color: Colors.orange,),
                    SizedBox(width: 10,),
                    Text("Edit Profile",style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
