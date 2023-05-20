import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DrawerItem  extends StatelessWidget {
  const DrawerItem({Key? key, required this.name, required this.icon, required this.onPressed}) : super(key:key);

  final String name;
  final IconData icon;
  final Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed ,
      child: SizedBox
        (
        height: 40.0,
        child: Row(
          children: [
            Icon(icon,size:20,color: HexColor('063455'),),
            const SizedBox(width: 40.0,),
            Text(name,style:TextStyle(fontSize:20,color:HexColor('063455')  ) ,),
          ],
        ),
      ),
    );
  }
}