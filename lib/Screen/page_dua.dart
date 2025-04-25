import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Row', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 35, color: Colors.red),
                Icon(Icons.spa, size: 35, color: Colors.red),
                Icon(Icons.phone, size: 35, color: Colors.red),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.star, size: 35, color: Colors.red),
                Icon(Icons.favorite, size: 35, color: Colors.red),
                Icon(Icons.person, size: 35, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
