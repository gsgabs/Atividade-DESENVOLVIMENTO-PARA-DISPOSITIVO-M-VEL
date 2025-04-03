import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter is Fun'),
        centerTitle: true, // Centers the title (optional)
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: const Color.fromARGB(255, 238, 137, 97),
          width: 148.0,
          height: 148.0,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 30.0, right: 20.0), // Centers the text inside the container
          child: Text(
            'Hi Mom 🐣',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color:Colors.black // Text color
            ),
            textAlign: TextAlign.start, // Centers text horizontally
          ),
        ),
      ),
    );
  }
}
