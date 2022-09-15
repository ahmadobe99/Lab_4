import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Secreen_one extends StatefulWidget {
  const Secreen_one({super.key});

  @override
  State<Secreen_one> createState() => _Secreen_oneState();
}

class _Secreen_oneState extends State<Secreen_one> {
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                opacity: 100,
                image: NetworkImage(
                    "https://i.pinimg.com/originals/6f/18/b5/6f18b57beea8f4b40ad65ec3474e91df.jpg"))),
        child: ListView(children: [
          ElevatedButton(
            onPressed: (() {
              setState(() {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return Home_Page();
                }));
              });
            }),
            child: Text(
              "Back to home page",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.purple),
          ),
          Center(
              child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromARGB(246, 3, 183, 249),
                borderRadius: BorderRadius.circular(20)),
            child: Card(
              child: Text(
                "Where tou wont to travel ?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              color: Color.fromARGB(255, 249, 237, 3),
            ),
          )),
          Column(
            children: [
              Container(
                child: RadioListTile(
                    secondary: Icon(Icons.location_city),
                    subtitle: Text("Petra",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w900)),
                    title: Text("Jordan",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                    value: "Jordan",
                    groupValue: city,
                    onChanged: ((value) {
                      setState(() {
                        city = value.toString();
                      });
                    })),
              ),
               Container(
                child: RadioListTile(
                    secondary: Icon(Icons.location_city),
                    subtitle: Text("Dubai",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w900)),
                    title: Text("UAE",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                    value: "UAE",
                    groupValue: city,
                    onChanged: ((value) {
                      setState(() {
                        city = value.toString();
                      });
                    })),
              ),
               Container(
                child: RadioListTile(
                    secondary: Icon(Icons.location_city),
                    subtitle: Text("Istanbul",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w900)),
                    title: Text("Turkey",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                    value: "Turkey",
                    groupValue: city,
                    onChanged: ((value) {
                      setState(() {
                        city = value.toString();
                      });
                    })),
              )
            ],
          )
        ]),
      ),
    );
  }
}
