import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();

}

class _DetailState extends State<Detail>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Stack(
          children:[
            Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(color: Color(0xffffe08e)),
              width: MediaQuery.of(context).size.width,
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(child: Image.asset("images/html.png", height: 150, width: 150, fit: BoxFit.cover,)),
            )
          ]
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                    "HTML Book - Web Design",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0, 
                      fontWeight: FontWeight.bold
                      )
                  ),
                  Text(
                    "Building iPhone Apps with HTML",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.0, 
                      fontWeight: FontWeight.bold
                      )
                  ),
                  Text(
                    "........",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0, 
                      fontWeight: FontWeight.bold
                      )
                  ),
                  SizedBox(height: 20.0,),
                  Row(children: [
                    Text(
                    "\$3.90",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.0, 
                      fontWeight: FontWeight.bold
                      )
                  ),
                  ],
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    decoration: BoxDecoration(color: Color(0xffffe08e), borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width,child: Center(
                      child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0, 
                        fontWeight: FontWeight.bold
                        )
                                        ),
                    ),)
             ],
             
           ),
           
           
         ),
      ],),
      ),
    );
  }
}