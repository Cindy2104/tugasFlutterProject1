import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PageDetailBerita extends StatelessWidget {
  //variabel item movie
  final Map<String, dynamic> itemBerita;

  const PageDetailBerita(this.itemBerita, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemBerita['judul'])),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  itemBerita['gambar'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 350,
                ),
              ),
              SizedBox(height: 20),
              Text(
                itemBerita['judul'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(height: 20),
              Text(itemBerita['tanggal'], style: TextStyle(fontSize: 15)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RatingBarIndicator(
                    rating: itemBerita['rating'],
                    itemBuilder:
                        (context, index) =>
                            Icon(Icons.star, color: Colors.yellow),
                    itemCount: 5,
                    itemSize: 20,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(itemBerita['isi'], style: TextStyle(fontSize: 15)),

              // Text(
              //   "RP. ${itemBerita['harga']}",
              //   style: TextStyle(color: Colors.red),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
