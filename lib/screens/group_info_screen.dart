import 'package:flutter/material.dart';
import 'logout_function.dart'; // Import logout_function.dart

class GroupInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50), // Set the app bar background color to green
        flexibleSpace: FlexibleSpaceBar(
          title: Text(
            'Biodata Kelompok',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make the title bold
              fontSize: 20.0, // Adjust the font size as needed
            ),
          ),
          centerTitle: true, // Center align the title
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildMemberInfo(
              name: 'Haykal Tito Setiawan',
              nim: '2208100093',
              hobby: 'Memancing',
              description:
                  'Haykal, seorang penggemar memancing yang tidak hanya melihatnya sebagai hobi, tetapi juga sebagai bagian penting dari kehidupannya. Setiap kali dia melemparkan umpannya ke air, dia merasakan kedamaian yang mengalir dalam dirinya, memperkuatnya tidak hanya secara fisik tetapi juga mental. Di tepi danau atau sungai, dia merasa terhubung dengan alam, membebaskan dirinya dari kehidupan sehari-hari dan hanya fokus pada satu tujuan: meraih momen yang berharga. Bagi Haykal, memancing bukan hanya sekadar aktivitas; itu adalah cerminan dari ketekunan dan keteguhan hati dalam mengejar kepuasan dan kedamaian.',
            ),
            _buildMemberInfo(
              name: 'Muhammad Ridho',
              nim: '2208100063',
              hobby: 'Main Game Mobile',
              description:
                  'Muhammad Ridho, seorang penggemar berat permainan video yang tidak hanya menganggapnya sebagai hiburan, tetapi juga sebagai cara untuk mengembangkan keterampilan strategis dan koneksi sosialnya. Setiap kali dia mengambil kendali dalam dunia virtual, dia merasakan kegembiraan yang memenuhi hatinya, mengasah keterampilan berpikir cepat dan keputusan taktisnya. Di balik layar, Ridho menemukan ruang untuk mengungkapkan kreativitasnya, menjelajahi dunia-dunia fantastis yang menawarkan tantangan dan keajaiban. Bagi Ridho, bermain game bukan hanya tentang mencapai level tertinggi; itu adalah tentang mengejar petualangan yang tak terbatas dan membangun komunitas yang solid dengan sesama pemain.',
            ),
            _buildMemberInfo(
              name: 'Zahri Akmal Harahap',
              nim: '2208100105',
              hobby: 'Sepak Bola',
              description:
                  'Zahri Akmal Harahap, seorang pecinta sepeda yang tidak hanya melihatnya sebagai aktivitas fisik, tetapi juga sebagai sarana untuk mengeksplorasi keindahan alam dan memperkuat kesehatannya. Setiap kali dia mengayuh pedalnya di jalan raya atau di pegunungan, Zahri merasakan kebebasan dan ketenangan yang mengalir dalam dirinya, menguatkan tubuhnya dan menyegarkan pikirannya. Di bawah sinar matahari atau di bawah langit malam, dia merasa terhubung dengan lingkungan sekitarnya, menemukan kegembiraan dalam setiap putaran roda yang membawa dia lebih dekat dengan alam. Bagi Zahri, bersepeda bukan hanya sekadar latihan; itu adalah perjalanan pribadi untuk menemukan kebugaran, keindahan alam, dan kedamaian dalam perjalanan hidupnya.',
            ),
            SizedBox(height: 20), // Jarak di antara biodata dan tombol logout
            AnimatedOpacity(
              opacity: 1.0, // Mulai dari opacity 1 (penuh)
              duration: Duration(milliseconds: 500), // Durasi animasi
              child: ElevatedButton(
                onPressed: () {
                  logout(context); // Panggil fungsi logout saat tombol logout ditekan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4CAF50),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberInfo({
    required String name,
    required String nim,
    required String hobby,
    required String description,
  }) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama: $name',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 147, 1, 1)),
            ),
            SizedBox(height: 8.0),
            Text(
              'NIM: $nim',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8.0),
            Text(
              'Hobi: $hobby',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi: $description',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Biodata Kelompok',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF4CAF50), // Set the app bar background color to green
        foregroundColor: const Color.fromARGB(255, 183, 176, 176),
      ),
    ),
    home: GroupInfoScreen(),
  ));
}
