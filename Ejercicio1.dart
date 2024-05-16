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
            image: 'https://w7.pngwing.com/pngs/14/397/png-transparent-apple-fruit-green-apple-red-apple.png',
            fontFamily: '', // Fuente para alimentos
            itemName: 'Manzana',
          ),
          _buildListItem(
            category: 'Animales',
            image: 'https://e7.pngegg.com/pngimages/537/682/png-clipart-dog-grooming-puppy-cat-pet-white-dog-adult-yellow-labrador-retriever-white-animals-thumbnail.png',
            fontFamily: 'Lato', // Fuente para animales
            itemName: 'Perro',
          ),
          _buildListItem(
            category: 'Lugares',
            image: 'https://w7.pngwing.com/pngs/655/800/png-transparent-eiffel-tower-paris-light-fixture-world-landmark-thumbnail.png', 
            fontFamily: 'Ubuntu', // Fuente para lugares
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
