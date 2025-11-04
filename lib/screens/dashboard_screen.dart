import 'package:flutter/material.dart';
import '../widgets/dashboard_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color kNgalahGreen = Color(0xFF0B6623); // Hijau tua

    return Scaffold(
      // kerangka layar
      backgroundColor: Colors.white, // latar belakang putih bersih
      appBar: AppBar(
        backgroundColor: kNgalahGreen,
        elevation: 0,
        title: const Text(
          // judul di app bar
          'Ngalah Mobile',
          style: TextStyle(
            color: Colors.white, // teks putih
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5, // spasi antar huruf
          ),
        ),
        centerTitle: true, // judul di tengah
      ),
      body: SingleChildScrollView(
        // agar bisa di-scroll jika konten melebihi layar
        child: Padding(
          padding: const EdgeInsets.all(20.0), // jarak tepi
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // rata tengah secara horizontal
            children: [
              const SizedBox(height: 10),
              Image.asset('assets/images/logo_ngalah.png', height: 80),
              const SizedBox(height: 10), // jarak antara logo dan teks
              const Text(
                // teks sambutan
                'Selamat Pagi,',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 5,
              ), // jarak antara teks sambutan dan deskripsi
              const Text(
                // deskripsi
                'Selamat Datang di Aplikasi Yayasan Darut Taqwa Sengonagung',
                textAlign: TextAlign.center, // rata tengah
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 25), // jarak sebelum grid
              GridView.count(
                // menampilkan item dalam grid
                crossAxisCount: 3, // 3 kolom per baris
                crossAxisSpacing: 10, // jarak horizontal antar kotak
                mainAxisSpacing: 10, // jarak vertikal antar kotak
                shrinkWrap: true, // agar GridView hanya sebesar isinya
                childAspectRatio:
                    1, // 1 = kotak persegi. Ubah ke 1.2 untuk agak lebar
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  DashboardItem(
                    icon: Icons.add_box,
                    label: 'PPDB',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.people,
                    label: 'SISDA',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.menu_book,
                    label: 'WAWASAN',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.menu_book_outlined,
                    label: 'YASINAN',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.book_outlined,
                    label: 'KARYA NGALAH',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.mic,
                    label: 'KHUTBAH',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.group,
                    label: 'JAMALIN',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.menu,
                    label: 'AL QUR\'AN',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.favorite,
                    label: 'WIRID & DOA',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.book,
                    label: 'MAULID',
                    onTap: () {},
                  ),
                  DashboardItem(
                    icon: Icons.more_horiz,
                    label: 'LAINNYA',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // navigasi bawah
        selectedItemColor: kNgalahGreen, // warna hijau untuk item yang dipilih
        unselectedItemColor:
            Colors.grey, // warna abu-abu untuk item yang tidak dipilih
        type: BottomNavigationBarType.fixed, // agar semua item terlihat
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'BERANDA'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'BACAAN'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'SISDA'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'PPDB'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SETTING'),
        ],
      ),
    );
  }
}
