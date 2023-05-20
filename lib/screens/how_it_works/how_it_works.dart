import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HowitWorks extends StatelessWidget {
  const HowitWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How it Works'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,


      ),
    );
  }
}