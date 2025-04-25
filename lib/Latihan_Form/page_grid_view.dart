import 'package:flutter/material.dart';
import 'package:project1_bimbi/Latihan_Form/page_detail_movie.dart';

class PageGridView extends StatefulWidget {
  const PageGridView({super.key});

  @override
  State<PageGridView> createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {
  //Data List Movie
  List<Map<String, dynamic>> listMovie = [
    {
      "nama": "Muhammad Nawaf Akbar",
      "gambar": "gambar/berita1.jpeg",
      "nidn": 230109,
      "email": "nwfakbart@gmail.com",
    },
    {
      "nama": "Naufal",
      "gambar": "gambar/berita2.jpeg",
      "nidn": 2301010,
      "email": "naufal@gmail.com",
    },
    {
      "nama": "Surya Langga",
      "gambar": "gambar/berita3.jpeg",
      "nidn": 2301011,
      "email": "surya@gmail.com",
    },
    {
      "nama": "Jacky Hura",
      "gambar": "gambar/berita4.jpg",
      "nidn": 2301012,
      "email": "ijek@gmail.com",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageDetailMovie2(listMovie[index]),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRect(
                      child: Image.asset(
                        listMovie[index]["gambar"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(
                          listMovie[index]["nama"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(listMovie[index]["email"]),
                        Text("NIDN : ${listMovie[index]["nidn"]}"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
