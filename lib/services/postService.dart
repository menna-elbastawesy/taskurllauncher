import 'package:day3training/models/posts.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class PostService {
  String baseUrl='https://jsonplaceholder.typicode.com/';
  String post='posts';
 Future <List<Posts>> getPosts() async {
   List<Posts> postList =[];
        Response  res= await  Dio().get('$baseUrl'+'$post');
        var data=res.data;
        data.forEach((element){
          postList.add(Posts.fromJson(element));
        });
   return postList;
  }

  }