import 'dart:math';
import 'package:flutter/material.dart';
import 'package:supermaket/model/Product.dart';

class HomeScreen extends StatelessWidget {
  var colors = [
    0xFFFFCDD2,
    0xFFBBDEFB,
    0xFFF8BBD0,
    0xFFE1BEE7,
    0xFFE8F5E9,
    0xFFDCEDC8,
    0xFFF0F4C3,
    0xFFFFF9C4,
    0xFFFFE0B2,
    0xFFFFCCBC,
    0xFFD7CCC8
  ];
  List<Product> products = [
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
    Product("Fresh Fruits & Vegetables", "images/meat.png"),
    Product("Fresh Fruits & Vegetables", "images/oil_food.png"),
    Product("Fresh Fruits & Vegetables", "images/fruits.png"),
  ];

  HomeScreen({Key? key}) : super(key: key);

  Color getRandomColor() {
    var rng = Random();
    var num = rng.nextInt(colors.length - 1);
    return Color(colors[num]);
  }

  Container buildNactarItem(Product product) => Container(
        width: 100.0,
        height: 180.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: getRandomColor(),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                product.imagePath,
                width: 120.0,
                height: 120.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                product.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Find Products",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
//    ...,other fields
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return buildNactarItem(products[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
