import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';




class SettingsScreen extends StatefulWidget
{


  @override
  _SettingsScreen  createState() => _SettingsScreen ();
}

class _SettingsScreen extends State {

  bool switchValue = false;
  bool switchOn = false;

  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: switchOn ? Colors.black :Colors.white,

        appBar: AppBar(
          backgroundColor: switchOn ? Colors.black :Colors.white,
        leading: Icon(
        Icons.arrow_back,
        //color: Colors.black,
          color: switchOn ? Colors.white :Colors.black,

    ),
    ),
    body: Container(

    width: 370,
    height: 900,
    margin: EdgeInsets.only(left:20.0 ),
  child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Container(
      alignment: AlignmentDirectional.center,
      child: Text(
        'Settings ',
        style: TextStyle(
        fontSize: 40.0,
      fontWeight: FontWeight.bold,
          color: switchOn ? Colors.white :Colors.black,

      ),
        ),
    ),
      SizedBox(
      height: 40,
      ),
        Row(
          children: [
            Icon(
              Icons.person_outline,
              size: 40.0,
              color: switchOn ? Colors.white :Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Account ',

              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                color: switchOn ? Colors.white :Colors.black,


              ),
            ),
          ],
        ),
      Container(
        width:double.infinity ,
        height: 2.0,
        color: Colors.grey[300],
      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
        width: 260.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade700,
              blurRadius: 5.0,
            ),
          ],
        ),

        height: 40.0,
        child: MaterialButton(

          onPressed: ()
          {

          },
          child: Container(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Edit profile',

              style:TextStyle(

                fontSize: 20.0,


              ),

            ),
          ),

        ),

      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
        width: 260.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade700,
              blurRadius: 5.0,
            ),
          ],
        ),

        ),
      SizedBox(
        height: 30,
      ),

      Row(
        children: [
          Icon(
            Icons.notifications_none,
            size: 40.0,
            color: switchOn ? Colors.white :Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Notifications ',
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
              color: switchOn ? Colors.white :Colors.black,


            ),
          ),
        ],
      ),
      Container(
        width:double.infinity ,
        height: 2.0,
        color: Colors.grey[300],
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0,),
        child: Row(
          children: [
            Text(
              'Notification ',
              style: TextStyle(
                fontSize: 20.0,
                color: switchOn ? Colors.white :Colors.black,



              ),
            ),

           SizedBox(
             width: 120.0,
           ),
            if (switchValue == true)
              (Text('on',
              style:TextStyle(
                color: switchOn ? Colors.white :Colors.black,
              ) ,
              ))
            else
              Text('off',
              style: TextStyle(
                color: switchOn ? Colors.white :Colors.black,
              ),),
           Switch(
               value: switchValue,
                onChanged: (newValue)
               {
                 setState((){
                   switchValue = newValue;
                 });
               }
           ),


          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Icon(
            Icons.ios_share_rounded,
            size: 40.0,
            color: switchOn ? Colors.white :Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'More ',
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
              color: switchOn ? Colors.white :Colors.black,


            ),
          ),
        ],
      ),
      Container(
        width:double.infinity ,
        height: 2.0,
        color: Colors.grey[300],
      ),
      SizedBox(
        height: 15.0,
      ),

        Padding(
          padding: const EdgeInsets.only(left: 15.0,),
          child: Row(
            children: [
              Text(
                'Dark Mode ',
                style: TextStyle(
                  fontSize: 20.0,
                  color: switchOn ? Colors.white :Colors.black,



                ),
              ),

              SizedBox(
                width: 120.0,
              ),
              if (switchOn == true)
                (Text('on',
                  style: TextStyle(
                    color: switchOn ? Colors.white :Colors.black,
                  ),
                ))
              else
                Text('off'),

              Switch(
                  value: switchOn,
                  onChanged: (newValue)
                  {
                    setState((){
                      switchOn = newValue;
                    });
                  }
              ),


            ],
          ),
        ),

      SizedBox(
        height: 15.0,
      ),
      Container(
        width: 260.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),

        ),

        height: 40.0,
        child: MaterialButton(

          onPressed: ()
          {

          },
          child: Row(
            children: [
              Icon(
                Icons.logout,
                size: 20.0,

              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,),
                  child: Text(
                    'Logout',

                    style:TextStyle(

                      fontSize: 20.0,


                    ),

                  ),
                ),
              ),
            ],
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