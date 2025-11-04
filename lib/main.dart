import 'package:flutter/material.dart';
import 'package:pawlife_me/screens/login_page.dart';
import 'package:pawlife_me/screens/register_page.dart';
import 'screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawlify Me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home:  MainPage(),
      routes: {
        '/login': (context) =>  LoginPage(),
        '/register': (context) =>  RegisterPage(),
       '/MainPage': (context) =>  MainPage(),

      },
    );
  }
}
