import 'package:flutter/material.dart';
import 'package:mi_tarea03_flutter/app/view/splash.dart';

class GaleriaPage extends StatelessWidget {
  final List<String> imageNames = [
    'Arboleda',
    'Bosque',
    'Naturaleza',
    'Riachuelo',
    'Arboleda',
    'Bosque',
    'Naturaleza',
    'Riachuelo'
  ]; // Nombres de las imágenes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Regreso a la ventana principal
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => SplashPage(),
              ),
            );
          },
        ),
        title: Text('Galería'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 8.0, 
          mainAxisSpacing: 8.0, 
        ),
        itemCount: imageNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/${imageNames[index]}.png',
                  width: 120, 
                  height: 120, 
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(imageNames[index]), 
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
