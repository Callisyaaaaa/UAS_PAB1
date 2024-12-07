import 'package:flutter/material.dart';

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
            // Gambar salad di tengah atas dengan ukuran lebih kecil
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 150, // Tinggi gambar
                width: 150, // Lebar gambar
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/salad.jpg'), // Path gambar salad
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle, // Membuat gambar berbentuk lingkaran
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Judul utama
            const Text(
              'Welcome to FitDine!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            // Deskripsi di bawah judul
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Discover a world of healthy food that will help you live your best life.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            const Spacer(), // Memastikan tombol berada di bagian bawah
            // Tombol Continue
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  print('Continue pressed');
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
