import 'package:day3training/screens/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
  }
}*/
class IncrementCounter extends StatefulWidget {
  const IncrementCounter({Key? key}) : super(key: key);

  @override
  _IncrementCounterState createState() => _IncrementCounterState();
}

class _IncrementCounterState extends State<IncrementCounter> {
  @override
  int _counter = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar(leading ,title,actions),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width:180,
              height:180,
              child: Image(image:NetworkImage('https://img.icons8.com/color/452/flutter.png'),)),

          SizedBox(height: 10,),
          Container(width: 350,
              child: TextField(decoration: InputDecoration(labelText:'Phone Number'),style: TextStyle(color: Colors.grey))),
          SizedBox(height: 8,),
          Container(
              width: 350,
              child: TextField(decoration: InputDecoration(labelText:'Password'),style: TextStyle(color: Colors.grey),)),
          SizedBox(height: 30,),
          Container(
            width:350,
            height:50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue,),
            child: MaterialButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:
                      (BuildContext context) =>
                  PageTwo(n:_counter),
                  ),
                );
               }
              ,child: Text('Log In',style: TextStyle(fontSize:18,fontWeight:FontWeight.bold,color: Colors.white),),),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forget Password ?',style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.grey),)
              ,Text('No Yawa. '
                ,style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.grey),)
              ,Text('Tap me',style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.grey),),],)
          ,SizedBox(height: 20,),
          Container(
            width:350,
            height:50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color:Colors.grey[300],),
            child: MaterialButton(
              onPressed: (){
                print('Sign Up');}
              ,child: Text('No Account? Sign Up',style: TextStyle(fontSize:18,fontWeight:FontWeight.bold,color: Colors.black45),),),
          ),
          SizedBox(height: 10,),
          Text('$_counter',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed:(){
          _incrementCounter();
        } ,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

    );


  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

}
