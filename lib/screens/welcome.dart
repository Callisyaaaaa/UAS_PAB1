import 'package:flutter/material.dart';
import 'dashboard.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 150, 
                width: 150, 
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/salad.jpg'), 
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle, 
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Welcome to FitDine!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            const const Padding(
              padding: sets.symmetric(horizontal: 30),
              child: Text(
                'Discover a world of healthy food that will help you live your best life.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16, fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              ),
            ),
            const Spacer(),
  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}