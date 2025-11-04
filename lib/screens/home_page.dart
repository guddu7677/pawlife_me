import 'package:flutter/material.dart';
import '../widgets/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pawlify Me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.pets_outlined),
        
      ),
      body: const HomeContent(),
    );
  }
}
