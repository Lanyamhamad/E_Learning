import 'package:flutter/material.dart';

class Landing extends StatefulWidget{
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}
class _LandingState extends State<Landing>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,   //to stick them in the left
          children: [
      Image.asset("images/landingpages.jpg"),
      SizedBox(
        height: 30.0,
      ),
      Text(
        "Order your\nfavourites Book",
        style: TextStyle(
          color: Colors.black,
          fontSize: 34.0, 
          fontWeight: FontWeight.bold)
          ),
      
      SizedBox(
        height: 10.0,
      ),    
      Text(
        "Read new Book and try to be aware ",
        style: TextStyle(
          color: Colors.black45, 
          fontSize: 18.0, 
          fontWeight: FontWeight.w500)
          ),
     
     
      ],),),
    );
  }
}