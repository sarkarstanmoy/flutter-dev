import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: BallStatePage(),
    );
  }
}

class BallStatePage extends StatefulWidget {
  @override
  _BallStatePageState createState() => _BallStatePageState();
}

class _BallStatePageState extends State<BallStatePage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () => {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            })
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
