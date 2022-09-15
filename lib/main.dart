import 'package:flutter/material.dart';
import 'package:myapp/secreen_one.dart';
import 'package:myapp/secreen_tow.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home_Page();
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                opacity: 100,
                image: NetworkImage(
                    "https://th.bing.com/th/id/R.103041a8e5eaf68c205a0df98575a27b?rik=MPnG0A%2bkhPOjGA&pid=ImgRaw&r=0"))),
        child: ListView(
          children: [
          Center(
              child: Container(
                padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 10, 232, 166), borderRadius: BorderRadius.circular(20)),
                child: Card(
                  
            child: Text( 
                "Welcome to your travel app",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
            color: Color.fromARGB(255, 193, 255, 7),
          ),
              )),
            ElevatedButton.icon(onPressed: (() {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context){return Secreen_one();}));
              });
              
            }), icon:Icon(Icons.favorite), label: Text("Your prefrence page")),
            ElevatedButton.icon(onPressed: (() {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context){return Secreen_tow();}));
              });
              
            }), icon:Icon(Icons.favorite), label: Text("Fill your information")),

        ]),
      ),
    );
  }
}
