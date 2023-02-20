import 'package:curso_java_examen_practico_1_juan_amador/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen Practico 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        'home': (context) => const HomeScreen(),
      },
      initialRoute: 'home',
    );
  }
}

