import 'package:flutter/material.dart';
import 'package:CTE/homepage.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

void main() => runApp(const MyApp());

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CTE',
      home: HomePage(
        course: null,
      ),
    );
  }
}
