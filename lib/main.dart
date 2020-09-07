import 'dart:math';

import 'package:flutter/material.dart';

void main(){
    return runApp(
        MaterialApp(
        home: BallPage(),
        ),
    );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballnum=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
        ),
        body: Center(
              child: FlatButton(
                onPressed: (){
                      setState(() {
                        ballnum=Random().nextInt(5)+1;
                      });
                },
                child: Image.asset('images/ball$ballnum.png'),
              ),
            )
          );
  }
}
