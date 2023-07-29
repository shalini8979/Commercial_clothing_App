
import 'package:flutter/material.dart';


class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 241, 234),
      
      body: Container(height: 70,width: 150,color: Colors.black,child:Text("forget password",style: TextStyle(color: Colors.white),)),

    );
  }
}