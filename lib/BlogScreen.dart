import 'package:flutter/material.dart';

class BlogLayout extends StatelessWidget {

  final String urlOfImage;
  final String title;
  final String description;
  final String author;

  BlogLayout({this.author,this.title,this.description,this.urlOfImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
              child: Image.network(urlOfImage),
          ),
          Text(title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
            ),),
          Text(description,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
            color: Colors.grey,
          ),
          ),
        ],
      ),
    );
  }
}
