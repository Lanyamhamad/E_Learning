import 'package:book_store/pages/detail.dart';
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:50.0 ,left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      "Hey Emma,",
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
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "images/user.png", 
                    height: 60,
                    width: 60, 
                    fit: BoxFit.cover,),
                ),
              )
          ],
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            padding: EdgeInsets.only(left: 20.0, bottom: 3.0, top: 3.0),
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
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0, 
                        fontWeight: FontWeight.bold
                        )
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
          height: 275,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10.0, left: 20.0),
                  decoration: BoxDecoration(color: Color(0xffffe08e), borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "Book",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0, 
                        fontWeight: FontWeight.bold
                        )
                    ),
                    Text(
                      "\$2.99 each",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0, 
                        fontWeight: FontWeight.bold
                        )
                    ),
        
                    SizedBox(height: 10.0),
                    Image.asset("images/html.png", height: 130, width: 130, fit: BoxFit.cover,),
                    SizedBox(height: 20.0),
                  
                        GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail()));

                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 130.0),
                            decoration: BoxDecoration(color: Color(0xFFFFEAB5), borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), topLeft: Radius.circular(20))),
                            child: Icon(Icons.add, color: Colors.orange, size: 30,),
                          ),
                        )
                      ],             
                  ),                
                ),
                //from this 
                SizedBox(width: 20.0),
                Container(
                  padding: EdgeInsets.only(top: 10.0, left: 20.0),
                  decoration: BoxDecoration(color: Color(0xffffe08e), borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "Book",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0, 
                        fontWeight: FontWeight.bold
                        )
                    ),
                    Text(
                      "\$2.99 each",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0, 
                        fontWeight: FontWeight.bold
                        )
                    ),
        
                    SizedBox(height: 10.0),
                    Image.asset("images/css.png", height: 130, width: 130, fit: BoxFit.cover,),
                    SizedBox(height: 20.0),
                  
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 130.0),
                          decoration: BoxDecoration(color: Color(0xFFFFEAB5), borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), topLeft: Radius.circular(20))),
                          child: Icon(Icons.add, color: Colors.orange, size: 30,),
                        )
                      ],             
                  ),                
                )    //to this
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Text(
                "Near you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0, 
                  fontWeight: FontWeight.bold
                  )
              ),
              
          Text(
                "28+ Shops",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0, 
                  fontWeight: FontWeight.bold
                  )
              ),
        ],
        )
        ),
      ),
    );
  }
}