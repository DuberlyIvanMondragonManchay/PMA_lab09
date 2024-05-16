import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista con Imágenes y Fuentes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista con Imágenes y Fuentes'),
      ),
      body: ListView(
        children: [
          _buildListItem(
            category: 'Alimentos',
            image: 'assets/images/apple.png',
            fontFamily: 'Jacquard', // Fuente para alimentos
            itemName: 'Manzana',
          ),
          _buildListItem(
            category: 'Animales',
            image: 'assets/images/naru.png',
            fontFamily: 'Lato', // Fuente para animales
            itemName: 'Naruto',
          ),
          _buildListItem(
            category: 'Lugares',
            image: 'assets/images/paris.png', 
            fontFamily: 'fuente2', // Fuente para lugares
            itemName: 'París',
          ),
        ],
      ),
    );
  }

  Widget _buildListItem({
    required String category,
    required String image,
    required String fontFamily,
    required String itemName,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: _getImageProvider(image),
      ),
      title: Text(
        itemName,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(category),
    );
  }

  ImageProvider _getImageProvider(String imagePath) {
    if (imagePath.startsWith('http')) {
      return NetworkImage(imagePath);
    } else {
      return AssetImage(imagePath);
    }
  }
}
