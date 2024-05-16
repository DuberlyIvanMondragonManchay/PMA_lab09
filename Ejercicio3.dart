import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galería de Imágenes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageGallery(),
    );
  }
}

class ImageGallery extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/image1.png', // Ruta de una imagen PNG local
    'https://via.placeholder.com/200.jpg', // URL de una imagen JPEG
    'assets/image2.svg', // Ruta de una imagen SVG local
  ];

  final List<String> fontFamilies = [
    'Arial', // Fuente para PNG
    'Times New Roman', // Fuente para JPEG
    'Roboto', // Fuente para SVG
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería de Imágenes'),
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return _buildImageItem(imageUrls[index], fontFamilies[index]);
        },
      ),
    );
  }

  Widget _buildImageItem(String imageUrl, String fontFamily) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(imageUrl),
          SizedBox(height: 8),
          Text(
            'Nombre de la imagen',
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    if (imageUrl.endsWith('.svg')) {
      return SvgPicture.asset(
        imageUrl,
        height: 200,
        width: 200,
      );
    } else {
      return Image.network(
        imageUrl,
        height: 200,
        width: 200,
        fit: BoxFit.cover,
      );
    }
  }
}
