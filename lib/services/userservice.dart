import 'package:day3training/models/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class UserService{
  String baseUrl='https://jsonplaceholder.typicode.com/';
  String user='users';


 Future <List <User> >getUsers() async {
   List<User> userList=[];
  Response response= await Dio().get('$baseUrl'+"$user");
  var data=response.data;
  data.forEach((item){
    userList.add(User.fromJson(item));
  });
  return userList;
 }

}