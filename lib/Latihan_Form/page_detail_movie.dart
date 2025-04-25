import 'package:flutter/material.dart';

class PageDetailMovie2 extends StatelessWidget {
  //variabel item movie
  final Map<String, dynamic> itemMovie;

  const PageDetailMovie2(this.itemMovie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemMovie['nama'])),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  itemMovie['gambar'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 350,
                ),
              ),
              SizedBox(height: 20),
              Text(
                itemMovie['nama'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Email: ${itemMovie['email']}",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "NIDN: ${itemMovie['nidn']}",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
