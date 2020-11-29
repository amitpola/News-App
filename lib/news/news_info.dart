import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_pb_task3/news/Articles.dart';

class News{

  List<Articles> blognews=[];

  Future<void> getNews() async{
  String url="http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=04c6c367a339472badd88adb5175626a";
   var response= await http.get(url);

   var jsonData=jsonDecode(response.body);
   if(jsonData['status']=="ok"){
      jsonData['articles'].forEach((elements){
        if(elements['urlToImage']!=null && elements['description']!=null ){
          Articles articles=Articles(
            title: elements['title'],
            description: elements['description'],
            urlToImage: elements['urlToImage'],
          );
          blognews.add(articles);
        }
      });
   }
  }

}
