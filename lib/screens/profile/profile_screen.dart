

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_guie/screens/sidebar/sidebar.dart';



class ProfilePerson extends StatefulWidget {


  @override
  State<ProfilePerson> createState() => _ProfilePersonState();
}


class _ProfilePersonState extends State<ProfilePerson> {
  var gender='Female';
  int current_index=0;

  File?imageFile ;
  final ImagePicker picker =ImagePicker();














  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SideBar()));

              },
              icon: Icon(Icons.menu),
              iconSize: 45.0,
              color: HexColor('063455'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            imageProfile(),

            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 3.0,),
              child: Text(
                'Full Name',
                style: TextStyle(
                  color: HexColor('063455'),
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey,width: 2.0),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),







              ),

            ),
            SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 3.0,),
              child: Text(
                'Email',
                style: TextStyle(
                  color: HexColor('063455'),
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey,width: 2.0),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),







              ),

            ),
            SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 3.0,),
              child: Text(
                'Phone Number',
                style: TextStyle(
                  color: HexColor('063455'),
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your number',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey,width: 2.0),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),







              ),

            ),
            SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 3.0,),
              child: Text(
                'Age',
                style: TextStyle(
                  color: HexColor('063455'),
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your Age',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey,width: 2.0),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),







              ),

            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 3.0,),
              child: Text(
                'Gender',
                style: TextStyle(
                  color: HexColor('063455'),
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),
            Row(
              children: [
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0,),
                      child: Radio(
                          value: 'female',
                          activeColor:Colors.blue,
                          groupValue: gender,
                          onChanged:(value){
                            setState(() {
                              gender=value!;
                              print(gender);
                            });

                          }
                      ),
                    ),

                    SizedBox(width: 10.0,),
                    Text('Female',),
                  ],
                ),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,),
                      child: Radio(
                          value: 'male',
                          activeColor:Colors.blue ,


                          groupValue:gender ,
                          onChanged: (value){
                            setState(() {
                              gender=value!;
                              print(gender);
                            });
                          }
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text('Male',),
                  ],
                ),

              ],
            ),
            SizedBox(height: 10.0,),
// edgeinset.only(left:30.0,),on emulator
            Padding(
              padding: const EdgeInsets.only(left:15.0,),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('063455'),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 360.0,
                child: MaterialButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),














          ],


        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:  HexColor('063455'),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blueAccent,// your text style

          iconSize: 30,
          currentIndex: current_index,
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,

                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,

                ),
                label: 'Gps'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pause_circle_outline,

                ),
                label: 'Audio'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,

              ),
              label: 'Profile',

            ),
          ],
        ),
      ),





    );
  }


  imageProfile() {
    return Center(
      child: Stack(
        children:  [
          CircleAvatar(
            radius: 70.0,
            backgroundImage:imageFile==null
                ?  AssetImage("assets/images/person photo.png")
                : FileImage(File(imageFile!.path))as ImageProvider,



          ),

          Positioned(
            bottom:20.0 ,
            right:20.0 ,
            child:InkWell(
              onTap: (){
                showModalBottomSheet(
                  context: context,
                  builder: ((builder)=>bottomsheet()),
                );
              },



              child: Icon(
                Icons.edit,
                color:Colors.grey,
                size: 22.0,

              ),
            ),
          ),
        ],
      ),
    );


  }
  bottomsheet(){
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Column(
        children: [
          Text(
            'Choose Profile Photo',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height:20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){
                  takePhoto(ImageSource.camera);


                },
                icon:Icon(Icons.camera_alt_sharp),
                tooltip: 'Edit',
              ),
              IconButton(
                onPressed: (){
                  takePhoto(ImageSource.gallery);


                },
                icon:Icon(Icons.image),
                tooltip: 'Gallery',
              ),




            ],
          )
        ],
      ),
    );

  }
  void takePhoto(ImageSource source) async {
    final pickedFile=await picker.pickImage(
      source:source,
    );
    setState(() {
      imageFile=File(pickedFile!.path)  ;
    });


  }




}


