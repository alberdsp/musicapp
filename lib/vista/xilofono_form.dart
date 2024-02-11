import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XilofonoForm extends StatelessWidget {
  // Cargamos los archivos de audio y las imágenes
  String sonido1 = 'assets/media/note1.wav';
  String sonido2 = 'assets/media/note2.wav';
  String sonido3 = 'assets/media/note3.wav';
  String sonido4 = 'assets/media/note4.wav';
  String sonido5 = 'assets/media/note5.wav';
  String sonido6 = 'assets/media/note6.wav';
  String sonido7 = 'assets/media/note7.wav';

  // Función que construye botón expandido
  Expanded buildKey(Color colors, String nombreArchivoAudio) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: colors),
        onPressed: () {
          // Crea una instancia de AudioPlayer para cargar y reproducir el archivo de audio
          final player = AudioPlayer();
          // Reproduce el archivo de audio cuando se presiona el botón
          player.play(DeviceFileSource(nombreArchivoAudio));
        },
        child: Text(''),
      ), // TextButton
    ); // Expanded
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tocar la guitarra'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Crea una fila de botones expandidos

            buildKey(
              Colors.black,
              sonido1,
            ),
            buildKey(
              Colors.blue,
              sonido2,
            ),
            buildKey(
              Colors.red,
              sonido3,
            ),
            buildKey(
              Colors.green,
              sonido4,
            ),
            buildKey(
              Colors.yellow,
              sonido5,
            ),
            buildKey(
              Colors.purple,
              sonido6,
            ),
            buildKey(
              Colors.orange,
              sonido7,
            ),
          ],
        ),
      ),
    );
  }
}
