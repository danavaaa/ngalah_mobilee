import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class PreopeningScreen extends StatefulWidget {
  const PreopeningScreen({super.key});

  @override
  State<PreopeningScreen> createState() => _PreopeningScreenState();
}

class _PreopeningScreenState extends State<PreopeningScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const DashboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_ngalah.png', height: 120),
            const SizedBox(height: 16),
            const Text(
              'Ngalah Mobile',
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 23, 54, 24),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
