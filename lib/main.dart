import 'package:charitech/screens/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CharitechApp());
}

class CharitechApp extends StatelessWidget {
  const CharitechApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Charitech',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const LoginPage());
  }
}
