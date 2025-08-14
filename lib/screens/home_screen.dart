import 'package:flutter/material.dart';
import 'package:flutter_login/screens/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScreen> {
  var counter = 0;
  var result = 0;
  @override
  void initState() {
    super.initState();

    sharedGet();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count:",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "$counter",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 130,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                          )),
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      child: Text("-",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey))),
                ),
                Container(
                    height: 50,
                    width: 130,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 40),
                        ))),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () async{
                  result = counter;
                  var sharedPref = await SharedPreferences.getInstance();
                  sharedPref.setInt("value", result);
                  setState(() {

                  });
                },
                child: Text(
                  "Save Count",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 10,
            ),
            Text("Recent Counts:", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text(
              "$result",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TodoPage()));
            }, child: Text("To do App>",style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }

  void sharedGet()async{
    var shared = await SharedPreferences.getInstance();
    var getValue = shared.getInt("value");
    result = getValue!;

    setState(() {

    });
  }
}
