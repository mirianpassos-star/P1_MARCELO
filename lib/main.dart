import 'package:flutter/material.dart';

import 'splash_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Simples',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple, // Aqui define o roxo intenso
      brightness: Brightness.light,
   ),
   useMaterial3: true,
 ),
      // Qual tela abre primeiro:
      initialRoute: '/', 
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}