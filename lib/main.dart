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
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Image.asset('images/dice3.png'),
                        )
                    ),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Image.asset('images/dice4.png'),
                        )
                    ),
                  ],
                ),
                // Card(
                //     margin: EdgeInsets.only(top: 30),
                //     child: Padding(
                //       padding:
                //           EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                //       child: Text(
                //         'Roll Dice',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //     ))
                ElevatedButton(
                    child: Text(
                        'Rolling Dice',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),

                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                    ),
                )
              ],
            )),
      ),
    );
  }
}
