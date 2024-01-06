import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _HomepageState();
}

class _HomepageState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      width:100,
      color: Colors.white,
      child: Center(child: Text("hello",style: TextStyle(fontSize: 20),)),

    );
  }
}

