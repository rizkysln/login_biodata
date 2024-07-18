import 'package:flutter/material.dart';
import 'group_info_screen.dart'; // Import GroupInfoScreen

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF2A2E3D), Color(0xFF1E1E2C)],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Masuk',
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                        _buildTextField(
                          controller: usernameController,
                          label: 'Username',
                          icon: Icons.person,
                        ),
                        SizedBox(height: 20),
                        _buildTextField(
                          controller: passwordController,
                          label: 'Password',
                          icon: Icons.lock,
                          obscureText: _obscureText,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4CAF50),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            // Periksa kredensial
                            if (usernameController.text == 'admin' &&
                                passwordController.text == 'admin') {
                              // Jika login berhasil, arahkan ke GroupInfoScreen
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GroupInfoScreen(),
                                ),
                              );
                            } else {
                              // Jika login gagal, tampilkan pesan kesalahan
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Login gagal')),
                              );
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white),
        suffixIcon: suffixIcon,
        labelText: label,
        labelStyle: TextStyle(color: Colors.black), // Mengubah warna label menjadi hitam
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.3),
      ),
    );
  }
}
