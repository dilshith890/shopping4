import 'package:flutter/material.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _HomepageState();
}

class _HomepageState extends State<Myaccount> {
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
