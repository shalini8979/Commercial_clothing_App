import 'dart:async';
// import 'function/login.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_new_project_login/main.dart';
import 'package:flutter_new_project_login/function/login.dart';



class splash_screen extends StatefulWidget{

  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  
  // already_login service = already_login();

  void initState(){
    
    super.initState();

    // service.islogin(context );
    

    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>MyHomePage0()
      ),);
      });
  }
  @override
  
  
  
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:
         
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            margin: EdgeInsets.only(top: 50,left:200),
            height: 500,
            width: 300,
            child:  Image.asset('image/gown4.jpeg',height:150,width:150,filterQuality: FilterQuality.high,),

          ),
          Text( " Fashion  World   ",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:30), ),
      
        ],
          ),
    );

  }
}




