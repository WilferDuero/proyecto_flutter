import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/user_model.dart';

class Profile extends StatelessWidget {
  final UserModel user; // Usuario recibido desde Home

  const Profile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil de ${user.name}')),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 133, 77, 64),
              radius: 40,
              child: const Icon(Icons.person, color: Colors.white, size: 40),
            ),
            const SizedBox(height: 20),
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FixedColumnWidth(100),
                1: FlexColumnWidth(),
              },
              children: [
                _buildRow("Nombre", user.name),
                _buildRow("Edad", "${user.age}"),
                _buildRow("Categoria", user.category),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Volver"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }

  TableRow _buildRow(String key, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(key, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(value),
        ),
      ],
    );
  }
}
