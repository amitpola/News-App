

import 'package:flutter/material.dart';
import 'package:news_pb_task3/news/news_info.dart';
import 'package:news_pb_task3/news/Articles.dart';
import 'BlogScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Articles> articles=new List<Articles>();
  bool _load=true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  getNews() async{
    News news=News();
    await news.getNews();
    articles=news.blognews;
    setState(() {
      _load=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1E33),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('Instant',style: TextStyle(color: Colors.deepPurple),),
            Text('Updates',style: TextStyle(color: Colors.cyan),),
          ],
        ),
      ),
      body: _load?Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ):Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 692,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: articles.length,
                itemBuilder: (context,index){
                  return BlogLayout(
                    title: articles[index].title,
                    description: articles[index].description,
                    urlOfImage: articles[index].urlToImage,

                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}



