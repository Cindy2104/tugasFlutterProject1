import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PageChace extends StatelessWidget {
  const PageChace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chace Image', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: CachedNetworkImage(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCDNRuo7SWTfIFaak_4_CQA8TmShIytMMqKmB5TJxfwFx18Ujf46Upws6ICtZ_NsYtS-k&usqp=CAU",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
