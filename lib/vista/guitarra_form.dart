import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class GuitarraForm extends StatelessWidget {
  // Cargamos los archivos de audio y las imágenes
  String sonidoA = 'assets/media/chord-A.wav';
  String sonidoC = 'assets/media/chord-C.wav';
  String sonidoD = 'assets/media/chord-D.wav';
  String sonidoE = 'assets/media/chord-E.wav';
  String sonidoF = 'assets/media/chord-F.wav';
  String sonidoG = 'assets/media/chord-G.wav';
  String cuerda = 'assets/media/cuerda.png';

  // Función que construye botón expandido
  Expanded buildKey(Image imagen, String nombreArchivoAudio) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          // Crea una instancia de AudioPlayer para cargar y reproducir el archivo de audio
          final player = AudioPlayer();
          // Reproduce el archivo de audio cuando se presiona el botón
          player.play(DeviceFileSource(nombreArchivoAudio));
        },
        child: imagen, // Utiliza la imagen como contenido del botón
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Crea una fila de botones expandidos

            buildKey(
              Image.asset(cuerda),
              sonidoA,
            ),
            buildKey(
              Image.asset(cuerda),
              sonidoC,
            ),

            buildKey(
              Image.asset(cuerda),
              sonidoD,
            ),
            buildKey(
              Image.asset(cuerda),
              sonidoE,
            ),
            buildKey(
              Image.asset(cuerda),
              sonidoF,
            ),
            buildKey(
              Image.asset(cuerda),
              sonidoG,
            ),
          ],
        ),
      ),
    );
  }
}
