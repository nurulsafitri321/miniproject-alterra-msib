import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        
      ),
      
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            MaterialButton(
              child: const Text('Login'),
              onPressed: () {
                // Validasi input
                if (_usernameController.text.isEmpty ||
                    _passwordController.text.isEmpty) {
                  return;
                }

                // Lakukan otentikasi
                // ...

                // Jika otentikasi berhasil, arahkan ke halaman utama
                // ...

                // Kode otentikasi
                String username = _usernameController.text;
                String password = _passwordController.text;

                if (username == 'admin' && password == '123456') {
                  // Otentikasi berhasil
                  Navigator.pushNamed(context, '/home');
                } else {
                  // Otentikasi gagal
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Login Gagal'),
                        content: const Text('Username atau password salah.'),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: const Text('Register'),
                            onPressed: () {
                              // Arahkan ke halaman register
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        ],
                      );
                      
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
