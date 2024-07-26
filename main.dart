import 'package:flutter/material.dart';
import 'Page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //全体
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}
