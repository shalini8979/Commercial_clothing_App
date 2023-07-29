
import 'package:flutter/material.dart';
import 'package:flutter_new_project_login/function/login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/bottomnav_bar.dart';


class MyHomePage1 extends StatefulWidget {
   MyHomePage1({super.key});

  final TextEditingController email_ctrl2=TextEditingController();
  final  TextEditingController password_ctrl2=TextEditingController();

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  var email_ctrl2= TextEditingController();
  var password_ctrl2=TextEditingController();
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      

      body: 
      Column(
        children: [
          Container(
            height: 300,
            child: Image.asset("image/signback.jpg",fit:BoxFit.fill ),

          ),

          Expanded(child: Container(
            child:Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20.0),

            
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                 
              children: [
               
                Center(child:Text("SignUP",style: TextStyle(color: Colors.black,fontSize: 33.0,fontWeight: FontWeight.bold),),),
                

                SizedBox(height: 30.0,),
                
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                
                  child: TextField(
                    controller: email_ctrl2,
                    
                    style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"Email",
                        hintText: "Enter your email",
                         prefixIcon:Icon(Icons.email_outlined),
                      ),
                    ),
                  ),


                SizedBox(height: 50.0,),
                
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: password_ctrl2,
                    style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"Password",
                        hintText: "Enter your Password",
                         prefixIcon:Icon(Icons.lock_outline),
                      )
                    ),
                  ),

                  SizedBox(height:50.0),

                  InkWell(
                    onTap: ()async {
                    try {
                      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email_ctrl2.text,
                        password: password_ctrl2.text,
                        );
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>bottomnavbar()));
                      } on FirebaseAuthException catch (e) {
                       if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                      }
                      } catch (e) {
                          print(e);
                      };
                      },
                     
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),

                        child:const Center(
                          child: Text("SignUp",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                          ),
                        )

                      ),
                    ),

                    SizedBox(height: 40,),
                    
                    Row(children: [
                     Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                     child:Text("Already have an account",style: TextStyle(fontSize: 17.0,color: Colors.black,fontWeight: FontWeight.normal),),),
                    InkWell(
                      onTap: (){
                       
                         Navigator.push(context, PageTransition(curve: Curves.bounceOut, type: PageTransitionType.leftToRight,
                         alignment: Alignment.topCenter,child: MyHomePage0(),),);

                      },
                      child:Text("Log In",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 17,),)
                    ),
                      ],
            
                    ),

                  SizedBox(height: 20.0,),

                  Text("                              or connect with",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w700),),

                  SizedBox(height: 20.0,),

                  Row(
                  children:[
                    SizedBox(width: 80.0,),
                  Image.asset("image/google.png",height: 35.0,width: 35.0,),
                     SizedBox(width: 40.0,),
                  Image.asset("image/facebook.png",height: 35.0,width: 35.0,),
                   SizedBox(width: 40.0,),
                  Image.asset("image/twitter.png",height: 35.0,width: 35.0,),
                  ],)


              ],

            )
            
            ) ,

          ))
            ],
            )
    
    );
  }
}
