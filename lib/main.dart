import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soportepc/pages/Login/LoginPages.dart';

import 'pages/Home/HomePages.dart';
import 'pages/router/routers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: getRutas(),
      title: 'Material App',
      home: const SafeArea(child: HomePages()),
    );
  }
}
