import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping4/login.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:FirebaseOptions(apiKey: 'AIzaSyDvsvKQYklqKr0Q5W5Xk_oyety0vzxw-gA', appId: '1:1042557514741:android:f32277482a7e3d95e0a6bc', messagingSenderId: '1042557514741', projectId: 'project4-d50e0') );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:login(),
    );
  }
}

