import 'package:flutter/material.dart';

class StarterPage extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/start.jpg'), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Just Started in Jhapa', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                SizedBox(height: 20), //use of sizedbox is to give some space
                Text("See restaurants nearby \nadding location", style: TextStyle(color: Colors.white, fontSize: 18, height: 1.4)),
                SizedBox(height: 100),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.orange,
                          ],
                        )),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      child: Text("Start", style: TextStyle(color: Colors.white)),
                    )),
                SizedBox(height: 30),
                Align(child: Text("Deliver 24 hours to your Door", style: TextStyle(color: Colors.white70, fontSize: 15))),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
