import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_mi2a_project1/Latihan_Form/page_detail_berita.dart';
import 'package:flutter_mi2a_project1/Page/page_detail_berita.dart';

class PageListView extends StatefulWidget {
  const PageListView({super.key});

  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView> {
  //Data List
  List<Map<String, dynamic>> ListBerita = [
    {
      "judul": "Judul Berita Satu",
      "isi":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      "tanggal": "15 Maret 2025",
      "gambar": "gambar/berita1.jpeg",
      "rating": 5,
    },
    {
      "judul": "Judul Berita Dua",
      "isi":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      "tanggal": "16 Maret 2025",
      "gambar": "gambar/berita2.jpeg",
      "rating": 4,
    },
    {
      "judul": "Judul Berita Tiga",
      "isi":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      "tanggal": "17 Maret 2025",
      "gambar": "gambar/berita3.jpeg",
      "rating": 4,
    },
    {
      "judul": "Judul Berita Empat",
      "isi":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      "tanggal": "12 Maret 2025",
      "gambar": "gambar/berita4.jpg",
      "rating": 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: ListBerita.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageDetailBerita2(ListBerita[index]),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          ListBerita[index]['gambar'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ListBerita[index]['judul'],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(ListBerita[index]['tanggal']),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RatingBarIndicator(
                                rating: ListBerita[index]['rating'],
                                itemBuilder: (context, index) =>
                                    Icon(Icons.star, color: Colors.yellow),
                                itemCount: 5,
                                itemSize: 15,
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
