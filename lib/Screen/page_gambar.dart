import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spiderman', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(child: Image.asset('gambar/spiderman.jpg')),
    );
  }
}
