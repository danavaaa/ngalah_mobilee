import 'package:flutter/material.dart';
import 'screens/preopening_screen.dart';

void main() {
  runApp(const NgalahApp());
}

class NgalahApp extends StatelessWidget {
  const NgalahApp({super.key});

  @override
  Widget build(BuildContext context) {
    // root widget aplikasi
    return MaterialApp(
      // widget utama aplikasi
      debugShowCheckedModeBanner: false,
      title: 'Ngalah Mobile',
      theme: ThemeData(primarySwatch: Colors.green), // tema hijau
      home: const PreopeningScreen(), // layar pembuka
    );
  }
}
