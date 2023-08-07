import 'package:flutter/material.dart';
import 'package:foodapp/HomePage.dart';
import 'package:foodapp/Modals/burger/burgers_screen.dart';
import 'package:foodapp/Modals/pizza/pizzas_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),       
        '/pizzas_screen':(context) => const pizzas_screen(),
        '/burgers_screen':(context) => const burgers_screen(),  
      },
    );
  }
}