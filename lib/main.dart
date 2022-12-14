import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ask Me Anything ... ?",
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: show(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class show extends StatefulWidget {
  const show({Key? key}) : super(key: key);

  @override
  State<show> createState() => _showState();
}

class _showState extends State<show> {
  @override
  int ballno = 1;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  ballno = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset("images/ball$ballno.png"),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "don't take stress",
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
