import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA5D6A7), // Warna latar belakang
      body: SafeArea(
        // Untuk menghindari area notch/poni
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian atas dengan gambar profil dan notifikasi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/profile_picture.png'), // Ganti dengan path gambar Anda
                    radius: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications, color: Colors.white),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.yellow, // Warna latar belakang angka
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '15',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.add_circle_outline, color: Colors.white),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Bagian "Konsultasi disini!"
              Stack(
                clipBehavior: Clip.none, // Agar icon daun tidak terpotong
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Color(0xFFA5D6A7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Ikon daun kiri
                        // Tombol play
                        Icon(Icons.play_arrow, color: Colors.white),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -25, // Posisi angka 5 di bawah container
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20, // Perbesar ukuran font
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Ikon daun kanan (di luar Container utama)
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Image.asset(
                        'assets/Group151.png'), // Ganti dengan path gambar Anda
                  ),
                ],
              ),

              SizedBox(height: 50), // Beri jarak setelah Stack

              // Bagian Riwayat
              Text(
                'Riwayat',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // Daftar Riwayat (contoh dengan 2 item)
              RiwayatItem(
                imageUrl: 'assets/natifa.jpg', // Ganti dengan path gambar Anda
                nama: 'Natifa Putri',
                role: 'Mentor',
                status: 'Sesi Konsultasi Selesai',
              ),
              RiwayatItem(
                imageUrl: 'assets/allan.jpg', // Ganti dengan path gambar Anda
                nama: 'Allan Dev',
                role: 'Mentor',
                status: 'Riwayat chat: Sesi Konsultasi Selesai',
              ),

              // ... Tambahkan item riwayat lainnya di sini ...
            ],
          ),
        ),
      ),
    );
  }
}

// Widget untuk setiap item riwayat
class RiwayatItem extends StatelessWidget {
  final String imageUrl;
  final String nama;
  final String role;
  final String status;

  RiwayatItem({
    required this.imageUrl,
    required this.nama,
    required this.role,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(
          nama,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(role),
        trailing: Text(status),
      ),
    );
  }
}
