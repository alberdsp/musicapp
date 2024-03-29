import 'package:flutter/material.dart';

// hacemos la importación de las clases de las pantallas
import 'vista/xilofono_form.dart';
import 'vista/bongos_form.dart';
import 'vista/guitarra_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Sonidos',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'My sound app 2024'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // agregamos los gestos para que al dar clic en la imagen
            // nos lleve a la pantalla correspondiente
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(
                      builder: (context) =>
                          XilofonoForm()), // creamos una nueva instancia de la pantalla XilofonoForm
                );
              },
              child: Image.asset('assets/media/xilofono.png',
                  width: 150, height: 150),
            ),

            // agregamos los gestos para que al dar clic en la imagen
            // nos lleve a la pantalla correspondiente
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(
                      builder: (context) =>
                          BongosForm()), // creamos una nueva instancia de la pantalla BongosForm
                );
              },
              child: Image.asset('assets/media/bongos.png',
                  width: 150, height: 150),
            ),

            // agregamos los gestos para que al dar clic en la imagen
            // nos lleve a la pantalla correspondiente
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
