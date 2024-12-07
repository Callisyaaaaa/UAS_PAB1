import 'package:flutter/material.dart';
import 'screens/sign_in.dart';  // Mengimpor SignInScreen


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitDine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInScreen(), // Menetapkan SignInScreen sebagai layar utama
    );
  }
}
