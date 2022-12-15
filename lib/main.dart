import 'package:flutter/material.dart';
import 'package:planets/Pages/planets_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar System Pages',
      theme: ThemeData.dark(),
      home: const PlanetsPage(),
    );
  }
}
