import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // aplicacion principal

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación Xilófono',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'My sound app'),
    );
  }
}

// Clase principal
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  // Pantalla principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ), // Barra superior de la app

      // Cuerpo de la app con tres botones
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Botones con imágenes de los instrumentos
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XilofonoForm()),
                );
              },
              child: Image.asset('assets/media/xilofono.png',
                  width: 150, height: 150),
            ), // botón detección de gestos
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BongosForm()),
                );
              },
              child: Image.asset('assets/media/bongos.png',
                  width: 150, height: 150),
            ), // botón detección de gestos
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GuitarraForm()),
                );
              },
              child: Image.asset('assets/media/guitarra.png',
                  width: 150, height: 150),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Clase para las pantalla del xilófono
 */

class XilofonoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tocar Xilófono'),
      ),
      body: Center(
        child: Text('Esta es la pantalla del xilófono'),
      ),
    );
  }
}

/**
 * Clase para las pantalla de los bongos
 */

class BongosForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tocar Bongos'),
      ),
      body: Center(
        child: Text('Esta es la pantalla de los bongos'),
      ),
    );
  }
}

/**
 * Clase para las pantalla de la guitarra
 */

class GuitarraForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tocar Guitarra'),
      ),
      body: Center(
        child: Text('Esta es la pantalla de la guitarra'),
      ),
    );
  }
}
