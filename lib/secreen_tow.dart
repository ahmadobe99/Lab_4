import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Secreen_tow extends StatefulWidget {
  const Secreen_tow({super.key});

  @override
  State<Secreen_tow> createState() => _Secreen_towState();
}

class _Secreen_towState extends State<Secreen_tow> {
  List myItems = ["1 Person", "2 Person", "2-5 Person", "6-8 Person"];
  String myselctedItem = "1 Person";
  String classType = "";
  bool need = false;
  bool nn=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  opacity: 100,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/R.269d871fe077596524532c15c7c0f5f1?rik=yNP2DMz6A3yWSQ&pid=ImgRaw&r=0"))),
          child: ListView(scrollDirection: Axis.vertical, children: [
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              //alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 240, 235),
                  borderRadius: BorderRadius.circular(20)),
              child: Card(
                child: Text(
                  "Please enter your information",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                color: Color.fromARGB(255, 236, 240, 239),
              ),
            ),
            Container(
                child: Text("How Many Person?",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70))),
            DropdownButton(
                value: myselctedItem,
                items: myItems
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                    .toList(),
                onChanged: ((value) {
                  setState(() {
                    myselctedItem = value.toString();
                  });
                })),
            Container(
                child: Text("select your class",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70))),
            Column(
              children: [
                Container(
                  child: RadioListTile(
                      subtitle: Text("200 dolars per person",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w900)),
                      title: Text("Business",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      value: "Business",
                      groupValue: classType,
                      onChanged: ((value) {
                        setState(() {
                          classType = value.toString();
                        });
                      })),
                ),
                Container(
                  child: RadioListTile(
                      subtitle: Text("150 dolars per person",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w900)),
                      title: Text("Economy",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      value: "BEconomy",
                      groupValue: classType,
                      onChanged: ((value) {
                        setState(() {
                          classType = value.toString();
                        });
                      })),
                ),
              ],
            ),
            Container(
              child: Text("please select whatever you have during the trip",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Column(
              children: [
                CheckboxListTile(title: Text("medicine"),
                  secondary: Icon(Icons.medication_liquid),
                    value: need,
                    onChanged: ((value) {
                      setState(() {
                        need = value!;
                      });
                    })),
                    CheckboxListTile(title: Text("wepon"),
                  secondary: Icon(Icons.cancel),
                    value: nn,
                    onChanged: ((value) {
                      setState(() {
                        nn = value!;
                      });
                    }))
              ],
            ),
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
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 226, 221, 227)),
            ),
          ]),
        ));
  }
}
