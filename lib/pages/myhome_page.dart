import 'package:flutter/material.dart';
import 'package:proyecto_flutter/pages/profile_page.dart';
import 'package:proyecto_flutter/models/user_model.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<UserModel> users = [
    UserModel(name: 'Numar', age: 20),
    UserModel(name: 'Andres', age: 16),
    UserModel(name: 'Pedro', age: 35),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: users.map((user) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              title: Text(user.name, style: const TextStyle(fontSize: 18)),
              trailing: ElevatedButton(
                child: const Text('Ver Perfil'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Profile(user: user),
                    ),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
