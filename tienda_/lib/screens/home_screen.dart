import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // Datos simulados (en una app real, vendrían de una API o base de datos)
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'Audífonos Bluetooth',
      price: 29.99,
      imageUrl: 'https://picsum.photos/300/200?random=1',
    ),
    Product(
      id: '2',
      name: 'Teclado Mecánico',
      price: 59.90,
      imageUrl: 'https://picsum.photos/300/200?random=2',
    ),
    Product(
      id: '3',
      name: 'Mouse Inalámbrico',
      price: 19.99,
      imageUrl: 'https://picsum.photos/300/200?random=3',
    ),
    Product(
      id: '4',
      name: 'Monitor 24 pulgadas',
      price: 149.99,
      imageUrl: 'https://picsum.photos/300/200?random=4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda Online'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: _products[index]);
        },
      ),
    );
  }
}