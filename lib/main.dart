import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

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
          body: DicePage()),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  bool isResultShow = false;
  var winner = 'A';

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                        child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Player A',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ))),
                Expanded(
                    child: Center(
                        child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Player B',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ))),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('images/dice${leftDiceNumber}.png'),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('images/dice${rightDiceNumber}.png'),
                )),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                int randomNumber1 = random.nextInt(6) + 1;
                int randomNumber2 = random.nextInt(6) + 1;
                setState(() {
                  leftDiceNumber = randomNumber1;
                  rightDiceNumber = randomNumber2;
                  if(leftDiceNumber > rightDiceNumber) {
                    winner = 'A is the winner';
                  }
                  else if(rightDiceNumber > leftDiceNumber) {
                    winner = "B is the winner";
                  }
                  else {
                    winner = "The match is tie";
                  }
                  isResultShow = true;
                });
              },
              child: Text(
                'Roll the Dice',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: isResultShow
                    ? Text(
                        '${winner}',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    : Text(''))
          ],
        ));
  }
}
