import 'package:flutter/material.dart';

class GambarUrl extends StatelessWidget {
  const GambarUrl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Singapore', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6zicR6ExuKdewdhwxZtp98oRIonyNRGRqfA&s',
        ),
      ),
    );
  }
}
