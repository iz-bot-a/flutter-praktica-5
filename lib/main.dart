import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Карточка товара',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Магазин'),
          centerTitle: true,
        ),
        body: const Center(
          child: ProductCard(),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Кофемашина Premium Coffee',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Картинка товара
          Image.asset(
            'assets/images/coffee_machine.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),

          // Описание товара
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Автоматическая кофемашина с капучинатором. '
              'Заменяет бариста и не просит чаевых.',
              style: TextStyle(fontSize: 14),
            ),
          ),

          //Цена и рейтинг
          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '18 990 ₽',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                ),
                Text(
                  '⭐ 4.8',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
