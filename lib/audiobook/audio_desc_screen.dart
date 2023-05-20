import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_guie/screens/sidebar/sidebar.dart';



class AudioDescScreen extends StatelessWidget {
  const AudioDescScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
          Row(
            children: [
              IconButton(
              onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SideBar()));

    },
      icon: Icon(Icons.menu),
      iconSize: 45.0,
      color: HexColor('063455'),
    ),
                Padding(
                    padding: EdgeInsets.only(left: 45.0,top: 13.0),
                  child: Center(
                    child: Text(
                      'Audio Books',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
            ],
          ),

Container(
  child: SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/sun rise.png',scale: 2.0,),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'The Sun Also Rises',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ernest Hemingway , 1926',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Is a novel by American writer Ernest',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            Text(
              'Hemingway , his first , that portrays',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            Text(
              'American and Biritish expatriates who',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            Text(
              'travel from pairs to the festival of San',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            Text(
              'Fermin in pamplona to watch the running',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            Text(
              'of the bulls and the bullfights.an early',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            Text(
              'modernist novel, it received mixed reviews',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
            Text(
              'upon publication',
              style: TextStyle(
                fontSize: 18.0 ,
                color: Colors.black87,
              ),
            ),
      SizedBox(height:20.0 ,),
      SingleChildScrollView(
        child: Container(
        decoration: BoxDecoration(
        color: HexColor('063455'),
        borderRadius: BorderRadius.all(
        Radius.circular(10.0),
        ) ,
        ),
        width: 130.0 ,
        child: MaterialButton(
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(
                Icons.play_arrow_outlined,
               color: Colors.white,
            ),
            SizedBox(height: 50.0,),
            Text(
            'Play',
            style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            ),
            ),
          ],
        ),
        ),

        ),
      )




          ],

        ),
      ),
    ),
  ),
),
    ],

    ),

    );


  }
}
