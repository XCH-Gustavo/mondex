import 'package:flutter/material.dart';
import '../../domain/entities/monster.dart';

class MonsterDetailsPage extends StatelessWidget {
  final Monster monster;

  const MonsterDetailsPage({super.key, required this.monster});

  @override
  Widget build(BuildContext context) {
    // final typesString = monster.types.join(', ');

    return Scaffold(
      appBar: AppBar(
        title: Text(monster.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              monster.imageUrl,
              height: 250,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                monster.name,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 4),
            Center(
              child: Text(
                // typesString,
                monster.types,
                style: const TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                monster.description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}