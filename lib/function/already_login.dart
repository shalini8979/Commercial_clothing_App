import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project_login/function/login.dart';
import 'package:flutter_new_project_login/screens/dashboard/presentation/main_screen.dart';

class already_login{

  void islogin(BuildContext context){

    final FirebaseAuth _auth= FirebaseAuth.instance ;

    void islogin(BuildContext context) {

      final user = _auth.currentUser;

      if(user!=null){
        Timer(const Duration (seconds : 3),()=> 
        Navigator.push(context , MaterialPageRoute(builder:(context) => MyHomePage3())));
      }else{
        Timer(const Duration(seconds: 3),()=> Navigator.push(context , MaterialPageRoute(builder:(context)=> MyHomePage0())));
      }

      }
    }

  }


