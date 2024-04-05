import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [{}];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            border: Border.all()
          ),
          
          child: const Image(image: AssetImage("assets/images/products/bike1.png"),),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            border: Border.all()
          ),
          
          child: const Image(image: AssetImage("assets/images/products/3451585.jpg"),),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            border: Border.all()
          ),
          
          child: const Image(image: AssetImage("assets/images/products/miphone.jpeg"),),
          
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            border: Border.all()
          ),
          
          child: const Text('Who scream'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            border: Border.all()
          ),
          
          child: const Text('Revolution is coming...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            border: Border.all()
          ),
          
          child: const Text('Revolution, they...'),
        ),
      ],
    );
  }
}
