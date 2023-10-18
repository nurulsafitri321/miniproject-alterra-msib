import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Selamat datang di halaman utama aplikasi perpustakaan!'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  child: const Text('Logout'),
                  onPressed: () {
                    // Logout pengguna
                    // ...

                    // Arahkan ke halaman login
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                MaterialButton(
                  child: const Text('Register'),
                  onPressed: () {
                    // Arahkan ke halaman register
                    Navigator.pushNamed(context, '/register');
                  },
                ),
                MaterialButton(
                  child: const Text('book'),
                  onPressed: () {
                    // Arahkan ke halaman register
                    Navigator.pushNamed(context, '/book');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
