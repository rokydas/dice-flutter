import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Dice Rolling'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            color: Colors.brown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 150,
                        child: Image(image: AssetImage('images/dice1.png'))),
                    Container(
                        width: 150,
                        child: Image(image: AssetImage('images/dice2.png')))
                  ],
                ),
                Card(
                  margin: EdgeInsets.only(top: 30),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Text(
                      'Roll Dice',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  )
                )
              ],
            )),
      ),
    );
  }
}
