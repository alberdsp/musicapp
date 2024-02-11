import 'package:flutter/material.dart';

class GuitarraForm extends StatelessWidget {
  const GuitarraForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tocar Guitarra'),
      ),
      body: const Center(
        child: Text('Esta es la pantalla de la guitarra'),
      ),
    );
  }
}
