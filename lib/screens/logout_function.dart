import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import halaman login jika belum di-import

void logout(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Konfirmasi Logout'),
        content: Text('Apakah Anda yakin ingin logout?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Tutup dialog
            },
            child: Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              // Jika diklik Ya, maka navigasi ke halaman login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('Ya'),
          ),
        ],
      );
    },
  );
}
