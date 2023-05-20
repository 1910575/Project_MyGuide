import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_guie/screens/sidebar/sidebar.dart';

import 'history_screen.dart';
import 'literature_screen.dart';
import 'psychology_screen.dart';
import 'religious_screen.dart';

class AudioBooksScreen extends StatefulWidget {
  @override
  State<AudioBooksScreen> createState() => _AudioBooksScreenState();
}

class _AudioBooksScreenState extends State<AudioBooksScreen> {
  int current_index = 0;
  int new_index = 0;
  List<Widget> screens = [
    HistoryScreen(),
    LiteratureScreen(),
    PsychologyScreen(),
    ReligiousScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: HexColor('063455'),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blueAccent, // your text style

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SideBar()));
                },
                icon: Icon(Icons.menu),
                iconSize: 45.0,
                color: HexColor('063455'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0, top: 13.0),
                child: Text(
                  'Audio Books',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Audio Books List ',
              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                color: HexColor('063455'),
              ),
            ),
          ),

          SingleChildScrollView(
            scrollDirection:Axis.horizontal ,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 5),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          // Navigator.push(  context,
                          //   MaterialPageRoute(builder: (context) => HistoryScreen()),);
                        });
                      },
                      child: Text(
                        'History',
                        style: TextStyle(
                          color: HexColor('063455'),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(  context,
                          MaterialPageRoute(builder: (context) => LiteratureScreen()),);
                      });
                    },
                    child: Text(
                      'Literature',
                      style: TextStyle(
                        color: HexColor('063455'),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(  context,
                          MaterialPageRoute(builder: (context) => PsychologyScreen()),);
                      });
                    },
                    child: Text(
                      'Psychology',
                      style: TextStyle(
                        color:HexColor('063455'),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(  context,
                          MaterialPageRoute(builder: (context) => ReligiousScreen()),);
                      });
                    },
                    child: Text(
                      'Religious',
                      style: TextStyle(
                        color: HexColor('063455'),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
             children: [
               Row(
                 children: [
                   Image.asset('my_guie-main/assets/images/1.jpg',scale: 9.0,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0,bottom: 10.0),
                     child: Column(
                       children: [
                         Text(
                           'The Sun Also Rises',
                           style: TextStyle(
                           fontSize: 25.0,
                           fontWeight: FontWeight.bold,
                           color: HexColor('063455'),
                         ),
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         Text(
                           'Ernest Hemingway,1926',
                           style: TextStyle(
                             fontSize: 20.0,
                             color:Colors.grey,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],

               ),
               SizedBox(
                 height: 10.0,
               ),
               Row(
                 children: [
                   Image.asset('my_guie-main/assets/images/4.jpg',scale: 9.0,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0,bottom: 10.0),
                     child: Column(
                       children: [
                         Text(
                           'Little Women',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                             color: HexColor('063455'),
                           ),
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         Text(
                           'Louisa May Alcott,1868',
                           style: TextStyle(
                             fontSize: 20.0,
                             color:Colors.grey,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],

               ),
               SizedBox(
                 height: 10.0,
               ),
               Row(
                 children: [
                   Image.asset('my_guie-main/assets/images/3.png',scale: 9.0,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0,bottom: 10.0),
                     child: Column(
                       children: [
                         Text(
                           'The Scarlet Letter',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                             color: HexColor('063455'),
                           ),
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         Text(
                           'Nathaniel Hawthorne,1850',
                           style: TextStyle(
                             fontSize: 20.0,
                             color:Colors.grey,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],

               ),
               SizedBox(
                 height: 10.0,
               ),
               Row(
                 children: [
                   Image.asset('my_guie-main/assets/images/2.png',scale: 9.0,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0,bottom: 10.0),
                     child: Column(
                       children: [
                         Text(
                           'Beloved',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                             color: HexColor('063455'),
                           ),
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         Text(
                           'Toni Morrison,1987',
                           style: TextStyle(
                             fontSize: 20.0,
                             color:Colors.grey,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],

               ),
               SizedBox(
                 height: 10.0,
               ),
               Row(
                 children: [
                   Image.asset('my_guie-main/assets/images/5.jpg',scale: 9.0,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0,bottom: 10.0),
                     child: Column(
                       children: [
                         Text(
                           'A Tale of Two Cities',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                             color: HexColor('063455'),
                           ),
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         Text(
                           'Charles Dickens,1859',
                           style: TextStyle(
                             fontSize: 20.0,
                             color:Colors.grey,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],

               ),


             ],
            ),
          ),
        ],
      ),
    );
  }
}
