import 'package:flutter/material.dart';
import 'package:responsive_ui_makanan_tradisional/matranesia.dart';
import 'package:responsive_ui_makanan_tradisional/login_screen.dart';
import 'package:responsive_ui_makanan_tradisional/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makanan Tradisional Indonesia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 60, 159, 159)),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      routes: {
        '/signup': (context) => RegisterScreen(),
      },
    );
  }
}
