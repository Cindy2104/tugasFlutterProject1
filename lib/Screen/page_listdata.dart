import 'package:flutter/material.dart';
import 'package:project1_bimbi/Screen/page_get_data.dart';

class PageListdata extends StatelessWidget {
  const PageListdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page List Data', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Judul Berita $index'),
            subtitle: Text('Detail Berita $index'),
            onTap: () {
              //proses passing data
              //buat satu file untuk menampung data
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageGetData(index)),
              );
            },
          );
        },
      ),
    );
  }
}
