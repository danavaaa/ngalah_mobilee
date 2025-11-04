import 'package:flutter/material.dart';
import 'screens/preopening_screen.dart';

void main() {
  runApp(const NgalahApp());
}

class NgalahApp extends StatelessWidget {
  const NgalahApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ngalah Mobile',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const PreopeningScreen(),
    );
  }
}
