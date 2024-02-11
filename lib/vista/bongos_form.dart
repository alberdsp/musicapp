import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BongosForm extends StatelessWidget {
  // Cargamos los archivos de audio y las imágenes

  String bongo1 = 'assets/media/bongo1.wav';
  String bongo2 = 'assets/media/bongo2.wav';
  String imgbongo1 = 'assets/media/bongo1.png';
  String imgbongo2 = 'assets/media/bongo2.png';

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
        title: const Text('Tocar Bongos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Crea una fila de botones expandidos
            Row(
              children: <Widget>[
                buildKey(
                  Image.asset(imgbongo1),
                  bongo1,
                ),
                buildKey(
                  Image.asset(imgbongo2),
                  bongo2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
