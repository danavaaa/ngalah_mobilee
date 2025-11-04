import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class PreopeningScreen extends StatefulWidget {
  const PreopeningScreen({super.key});

  @override
  State<PreopeningScreen> createState() => _PreopeningScreenState();
}

class _PreopeningScreenState extends State<PreopeningScreen> {
  // state untuk layar pembuka
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // tunggu selama 3 detik
      Navigator.pushReplacement(
        // pindah ke layar dashboard dan hapus layar pembuka dari tumpukan
        context,
        MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        ), // buat rute ke layar dashboard
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //  tampilan layar pembuka / splash screen
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_ngalah.png',
              height: 120,
            ), // logo aplikasi
            const SizedBox(height: 16), // jarak antara logo dan teks
            const Text(
              // teks di bawah logo
              'Ngalah Mobile',
              style: TextStyle(
                // gaya teks
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
