import 'package:flutter/material.dart';



class DartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Execício 2'),
        centerTitle: true, // Centers the title (optional)
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Flutter seu lindo'),
            SizedBox(
              child: FlutterLogo(),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Botão'))
          ],
        )
      ),
    );
  }
}
