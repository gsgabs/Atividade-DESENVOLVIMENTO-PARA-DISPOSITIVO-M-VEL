import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        automaticallyImplyLeading: false, // Remove o botão de voltar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash_rounded, color: Colors.lightBlue, size: 60),
            SizedBox(height: 20),
            Text(
              'Login realizado com sucesso!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}