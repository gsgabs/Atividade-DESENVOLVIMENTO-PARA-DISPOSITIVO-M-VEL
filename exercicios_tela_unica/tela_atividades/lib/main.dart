import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividades Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> activities;
  
  HomePage({super.key, required this.title}) : // Removido const aqui
    activities = [
      {
        'title': 'Atividade 1',
        'description': 'Primeira atividade de Flutter',
        'page': const ActivityPage(title: 'Atividade 1'),
      },
      {
        'title': 'Atividade 2', 
        'description': 'Segunda atividade de Flutter',
        'page': const ActivityPage(title: 'Atividade 2'),
      },
      // Adicione mais atividades conforme necessário
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6D28D9),
        title: const Text('Atividades de Flutter'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          final activity = activities[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(activity['title']),
              subtitle: Text(activity['description']),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => activity['page'],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ActivityPage extends StatelessWidget {
  final String title;
  const ActivityPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('Conteúdo da $title'),
      ),
    );
  }
}