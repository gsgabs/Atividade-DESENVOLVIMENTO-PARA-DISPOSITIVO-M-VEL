import 'package:flutter/material.dart';
import 'package:rotas_e_navegacao/pages/random_page.dart';

class Home_Page extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Código 1: Navega para a segunda tela.
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RandomPage(),
                  ),
                );
              },
              child: Text("Random"),
            );
          },
          child: const Text("Random"),
        ),
      ),
    );
  }
}