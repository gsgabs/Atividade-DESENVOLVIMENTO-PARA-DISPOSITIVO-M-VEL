import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid de Imagens',
      home: const ImageGridPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageGridPage extends StatelessWidget {
  const ImageGridPage({super.key});

  final List<String> imagePaths = const [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView de Imagens')),
      body: GridView.count(
        crossAxisCount: 2, // 2 colunas
        children: imagePaths.map((path) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(path, fit: BoxFit.cover),
          );
        }).toList(),
      ),
    );
  }
}
