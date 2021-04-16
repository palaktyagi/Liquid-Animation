import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
void main() => runApp(MyApp());
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}
*/


class MyApp extends StatelessWidget {
  
  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontWeight: FontWeight.bold ,
     fontFamily: "Product Sans"
  );
  static const TextStyle description= TextStyle(
    fontSize: 20.0,
    fontFamily: "Product Sans",
    color: Colors.grey,
  );
  static const TextStyle descriptionwhite= TextStyle(
    fontSize: 20.0,
    fontFamily: "Product Sans",
    color: Colors.white,
  );
  final pages = [
    Container(
      color: Colors.pinkAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Animation",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                     fontFamily: "Product Sans",
                      fontWeight: FontWeight.bold),
                ),

                 Icon(Icons.more_vert),
              ],
            ),
          ),
  
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.grey,
                      fontFamily: "Product Sans"),
                ),
                Text("Animation",style: boldStyle,),
                SizedBox(height:20),
                Icon( Icons.local_florist,size: 40,),
                Text("By Palak Tyagi\n"
                ,style: description,)
              ],
            ),
          ),
        ],
      ),
    ),


    Container(
      color: Color(0xFF55006c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Animation",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                     fontFamily: "Product Sans",
                      fontWeight: FontWeight.bold),
                ),
               Icon(Icons.more_vert),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontFamily: "Product Sans"),
                ),
                Text("Animation",style: boldStyle,),
                SizedBox(height:20),
                Icon( Icons.local_florist,size: 40,),
                Text("By Palak Tyagi\n"
                ,style: descriptionwhite,)
              ],
            ),
          ),
        ],
      ),
    ),


    Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Animation",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                     fontFamily: "Product Sans",
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontFamily: "Product Sans"),
                ),
                Text("Animation",style: boldStyle,),
                SizedBox(height:20),
                Icon( Icons.local_florist,size: 40,),
                Text("By Palak Tyagi\n"
               ,style: descriptionwhite)
              ],
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
          title: Text('Animation'),
        ),
          body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 300,
        enableSlideIcon: true,
        waveType: WaveType.liquidReveal,
        positionSlideIcon: .5,
      )),
    );
  }
}