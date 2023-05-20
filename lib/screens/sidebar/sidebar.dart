import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_guie/screens/about_us/about_us.dart';
import 'package:my_guie/screens/drawer_items/drawer_items.dart';
import 'package:my_guie/screens/history/history.dart';
import 'package:my_guie/screens/how_it_works/how_it_works.dart';
import 'package:my_guie/settings/settings_screen.dart';




class SideBar extends StatelessWidget {
  const SideBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0,80,24,0),
          child: Column(
            children: [



              DrawerItem(name: 'History', icon: Icons.book, onPressed:()=>onItemPressed(context,index:0),),
              DrawerItem(name: 'About Us', icon: Icons.people, onPressed:()=>onItemPressed(context,index:1),),
              DrawerItem(name: 'How it works', icon: Icons.question_mark, onPressed:()=>onItemPressed(context,index:2),),
              SizedBox(height: 30.0,),
              DrawerItem(name: 'Settings', icon: Icons.settings, onPressed:()=>onItemPressed(context,index:3),),
              DrawerItem(name: 'Logout', icon: Icons.logout, onPressed:()=>onItemPressed(context,index:4),),
            ],

          ),
        ),
      ) ,
    );

  }
  void onItemPressed(BuildContext context,{required int index}){
    Navigator.pop(context);
    switch(index){

      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> History()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutUs()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HowitWorks()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsScreen()));
        break;



    }
  }




}


