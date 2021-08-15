import 'package:day3training/models/posts.dart';
import 'package:day3training/services/postService.dart';
import 'package:flutter/material.dart';
class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool loading=true;
  List<Posts> posts=[];
  getPostList() async {
     posts= await PostService().getPosts();
     loading=false;
     setState(() {});
  }
  @override
  void initState() {
    super.initState();
    getPostList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        backgroundColor: Colors.indigoAccent,
        leading: Icon(Icons.menu,),
        title:Text('Posts',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.create,),
        )],),
      body:loading ? Center(child: CircularProgressIndicator(color: Colors.indigoAccent,))
          : ListView.builder(
          itemCount:posts.length,
          itemBuilder: ( BuildContext context , int index )
          {
            return Padding(
              padding: const EdgeInsets.all( 5.0),
              child: Card(
                color: Colors.indigoAccent,
                elevation: 15.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text('${index+1}- ${posts[index].title}',style: TextStyle(fontSize:18,color: Colors.white),),),
                ),
              ),
            );
          }
      ),
    );
  }
}
