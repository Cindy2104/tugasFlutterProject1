import 'package:flutter/material.dart';

class PageGetData extends StatelessWidget {
  //constructor untuk tampung data
  final int index;
  const PageGetData(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get Data List ke $index',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),

      body: Center(child: Text('Detail Berita Ke : $index')),
    );
  }
}
