import 'package:flutter/material.dart';
import 'package:library_app/book_page.dart';
import 'package:library_app/home_page.dart';
import 'package:library_app/login_page.dart';
import 'package:library_app/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Perpustakaan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/register',
      routes: {
        '/register': (context) => const RegisterPage(),
        '/login': (context) =>const LoginPage(),
        '/home': (context) => const HomePage(),
        '/book/detail': (context) => const BookListPage(),
      },
    );
  }
}
