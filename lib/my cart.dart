import 'package:flutter/material.dart';

class Mycart extends StatefulWidget {
  const Mycart({super.key});

  @override
  State<Mycart> createState() => _HomepageState();
}

class _HomepageState extends State<Mycart> {
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
