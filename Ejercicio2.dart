import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detalles del Producto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductDetailsScreen(),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Producto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'https://via.placeholder.com/200', // URL de la imagen web
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Nombre del Producto',
              style: TextStyle(
                fontFamily: 'Jacquard', // Fuente para el nombre del producto
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\$100.00', // Precio del producto
              style: TextStyle(
                fontFamily: 'fuente2', // Fuente para el precio
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Descripción del producto...', // Descripción del producto
              style: TextStyle(
                fontFamily: 'Nunito', // Fuente para la descripción
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
