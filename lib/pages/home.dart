import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home>{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:50.0 ,left: 20.0,right: 20.0),
        child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("images/wave.png",height: 30,width: 30, fit: BoxFit.cover,),
                  SizedBox(width: 10.0,),
                  Text(
                    "Hey Alex,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0, 
                      fontWeight: FontWeight.bold
                      ),
                    ),
                ],
              ),
                SizedBox(height: 20.0,),
          Text(
            "Read new Book and try\nto be aware ",
            style: TextStyle(
            color: Colors.black45, 
            fontSize: 18.0, 
            fontWeight: FontWeight.w500)
          ),

            ],
          ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "images/user.png", 
                height: 60,
                width: 60, 
                fit: BoxFit.cover,),
            )
        ],
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(left: 20.0, bottom: 5.0, top: 5.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xfff5f5f5),
            borderRadius: BorderRadius.circular(10)
          ),
          child: TextField(
            decoration: InputDecoration(
            border: InputBorder.none, 
            hintText: "Search Book", 
            suffixIcon: Icon(Icons.search_outlined,)),
          ),
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                  "Top Selling",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0, 
                    fontWeight: FontWeight.bold
                    )
            ),
            Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold
                    )
            )
          ],
        )

      ],
      )
      ),

    );
  }
}