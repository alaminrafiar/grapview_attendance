import 'package:flutter/material.dart';
import 'package:grapview_attendance/Pages/Profile/All%20Updated.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  List<String> items = <String>[
    'Select Gender', 'Male','Female','Others',
  ];
  String dropdownValue = 'Select Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 100,left: 20,right: 20)),
            Center(
              child: Container(
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
            ),
            SizedBox(height: 20,),
            Text("Edit Your Profile",style: TextStyle(fontSize: 25,color: Color(0xFF192855)),),
            SizedBox(height: 50,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Text("Full Name :",style: TextStyle(color: Colors.grey),),
                SizedBox(width: 20,),
                Container(
                  height: 45,
                  width: 260,
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
                      hintText: "Muksitur Rahman Rafi",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Text("Email :",style: TextStyle(color: Colors.grey),),
                SizedBox(width: 50,),
                Container(
                  height: 45,
                  width: 260,
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
                      hintText: "muksitur35-466@diu.edu.bd",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Text("Phone No :",style: TextStyle(color: Colors.grey),),
                SizedBox(width: 24,),
                Container(
                  height: 45,
                  width: 260,
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
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Text("Gender :",style: TextStyle(color: Colors.grey),),
                SizedBox(width: 40,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  height: 41,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                    ],
                  ),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(12),
                    dropdownColor: Colors.white,
                    elevation: 1,
                    underline: SizedBox(),
                    isDense: true,
                    isExpanded: true,
                    onChanged: (String? newValue){
                      setState((){
                        dropdownValue = newValue!;
                      });
                    },
                    value: dropdownValue,
                    items: items.map<DropdownMenuItem<String>>(
                        (String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                    ).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60,),
            TextButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (c) =>  AllUpdated()));
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                  ],
                ),
                child: Center(
                  child: Text("Update",style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
