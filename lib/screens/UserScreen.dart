import 'package:day3training/models/user.dart';
import 'package:day3training/screens/Mycard.dart';
import 'package:day3training/screens/UserDetails.dart';
import 'package:day3training/screens/utilise.dart';
import 'package:day3training/services/userservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}
class _UserScreenState extends State<UserScreen> {
  bool loading=true;
  List<User> users=[];
  getUserList() async {
    users= await UserService().getUsers();
    loading=false;
     setState(() {

     });
  }
  @override
  void initState() {
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: Icon(Icons.menu,color: Colors.white,),
        elevation: 20,
        title:Text('Users',style: TextStyle(color: Colors.white),),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.create,color:Colors.white,),
        )],),
      body:loading ? (Center(child: CircularProgressIndicator(color: Colors.blue,))):
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: (
                ListView.builder(itemCount:users.length, itemBuilder: ( BuildContext context , int index )
            {
              return  Padding(
                  padding: EdgeInsets.all(8.0)
                  ,child:
              InkWell(
                onTap:
                    () {
                  pushPage(context,UserDetails(users[index])); },
              child: MyCard(content: "${users[index].name}",),

                  )
              );
            }
            )
            ),
          ),
        ),

    );
  }
}
