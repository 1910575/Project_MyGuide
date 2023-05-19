
import 'package:flutter/material.dart';

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


              DrawerItem(name: 'Fav places', icon: Icons.star, onPressed:()=>onItemPressed(context,index:0),),
              DrawerItem(name: 'History', icon: Icons.book, onPressed:()=>onItemPressed(context,index:1),),
              DrawerItem(name: 'About Us', icon: Icons.people, onPressed:()=>onItemPressed(context,index:2),),
              DrawerItem(name: 'How it works', icon: Icons.question_mark, onPressed:()=>onItemPressed(context,index:3),),
              SizedBox(height: 30.0,),
              DrawerItem(name: 'Settings', icon: Icons.settings, onPressed:()=>onItemPressed(context,index:4),),
              DrawerItem(name: 'Logout', icon: Icons.logout, onPressed:()=>onItemPressed(context,index:5),),
            ],

          ),
        ),
      ) ,
    );

  }

  DrawerItem({required String name, required IconData icon, required Function() onPressed}) {}
 
  }

onItemPressed(BuildContext context, {required int index}) {
}




