import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  final IconData icon; // ikon yang digunakan
  final String label;
  final VoidCallback onTap; // fungsi yang dipanggil saat item ditekan

  const DashboardItem({
    super.key,
    required this.icon, // ikon yang digunakan
    required this.label, // label yang ditampilkan
    required this.onTap, // fungsi yang dipanggil saat item ditekan
  });

  @override
  Widget build(BuildContext context) {
    const Color kNgalahGreen = Color(0xFF0B6623);

    return InkWell(
      // untuk mendeteksi ketukan
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        16,
      ), // agar efek ripple berbentuk bulat
      child: Container(
        decoration: BoxDecoration(
          // gaya kotak
          color: const Color(0xFFF1F8F2), // hijau muda lembut
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // rata tengah secara vertikal
            children: [
              Icon(icon, color: kNgalahGreen, size: 28), // lebih kecil
              const SizedBox(height: 6), // jarak antara ikon dan teks
              Text(
                label,
                textAlign: TextAlign.center, // rata tengah
                style: const TextStyle(
                  // gaya teks
                  color: kNgalahGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
