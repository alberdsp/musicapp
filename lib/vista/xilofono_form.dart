import 'package:flutter/material.dart';

class XilofonoForm extends StatelessWidget {
  const XilofonoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tocar Xilófono'),
      ),
      body: const Center(
        child: Text('Esta es la pantalla del xilófono'),
      ),
    );
  }
}
