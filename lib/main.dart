import 'package:flutter/material.dart';
import 'navigation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ella's Bakery",
      theme: ThemeData(
        primaryColor: Colors.pink, // Mengubah warna tema menjadi pink
      ),
      debugShowCheckedModeBanner: false, // Menyembunyikan debug banner
      home: NavigationPage(),
    );
  }
}
