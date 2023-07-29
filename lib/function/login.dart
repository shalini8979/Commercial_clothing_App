

import 'package:flutter/material.dart';
import 'package:flutter_new_project_login/function/signup.dart';
import 'package:flutter_new_project_login/widgets/bottomnav_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MyHomePage0 extends StatefulWidget {
  const MyHomePage0({super.key});

  @override
  State<MyHomePage0> createState() => _MyHomePage0State();
}

class _MyHomePage0State extends State<MyHomePage0> {

  var userdetails;

  TextEditingController email_ctrl = TextEditingController();
  TextEditingController password_ctrl = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Image.asset("image/signback.jpg",fit:BoxFit.fill ),
      
            ),
      
            Container(
              child:Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20.0),
              
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child:Text("Login",style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),),),
                  
      
                  SizedBox(height: 30.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: email_ctrl,
                    style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"Email",
                        hintText: "Enter your email",
                        prefixIcon:Icon(Icons.email_outlined),
                        )
                      ),
                    ),
      
                  SizedBox(height: 30.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                
                  child: TextField(
                    controller: password_ctrl,
                    
                    style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"Password",
                        hintText: "Enter your Password",prefixIcon:Icon(Icons.lock_open_outlined),
                      ),
                    ),
                  ),
      
                    SizedBox(height:35.0),
      
                    InkWell(
                      onTap: () async {

                        try {
                          final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email_ctrl.text,
                            password: password_ctrl.text,
                          );
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavbar()));
                        } 
                        on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                print('No user found for that email.');
                              } else if (e.code == 'wrong-password') {
                                print('Wrong password provided for that user.');
                              }
                            }
                      },

                      child: Container(
                        height: 45,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.blue),
      
                          child:const Center(
                            child: Text("Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                            ),
                          ),
                      ),),
      
                      SizedBox(height: 20,),
      
                     
                       Divider(color: Colors.black,),
                      
      
                      SizedBox(height: 30,),
                 
                      Row(children: [
      
                        Text("Don't have an account ",style:  TextStyle(color: Colors.black,fontSize: 16.0,fontWeight:FontWeight.w100),),
                        SizedBox(width: 30,),
                      InkWell(
                        onTap: (){
                           Navigator.push(context, PageTransition(curve: Curves.bounceOut, type: PageTransitionType.leftToRight,
                           alignment: Alignment.topCenter,child: MyHomePage1(),),);
      
                        },
                        child:Text("SignUp",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 16),)
                      ),
                      
                      ],),
       
                      SizedBox(height: 30.0,),
                      
                      Center(child:InkWell(
                        onTap: (){
                           Navigator.push(context, PageTransition(curve: Curves.bounceOut, type: PageTransitionType.leftToRight,
                           alignment: Alignment.topCenter,child: bottomnavbar(),),);
      
                        },
                        child:Text("Forget Password",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 17),)
                      ),
                      ),
      
                ],
      
              )
              
              ) ,
      
            ),
            
              ],
              ),
      )
            );
  }
}
