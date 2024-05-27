import 'package:flutter/material.dart';
import 'package:pac_movil/Pages/Login/LoginPages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPages(),
    );
  }
}
