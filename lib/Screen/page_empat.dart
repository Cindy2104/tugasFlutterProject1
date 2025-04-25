import 'package:flutter/material.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(200, (index) {
            return Card(child: Center(child: Text("List Ke ${index}")));
          }),
        ),
      ),
    );
  }
}
