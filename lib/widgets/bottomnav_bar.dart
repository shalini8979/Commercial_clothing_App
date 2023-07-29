import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project_login/function/get.dart';
import 'package:flutter_new_project_login/function/search.dart';
import '../const/color.dart';
import '../function/post.dart';
import '../screens/dashboard/presentation/main_screen.dart';
import '../screens/dashboard/presentation/modelpage.dart';




class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int selectedindex = 0;
  var screens = [
  MyHomePage3() ,
  post_screen(),Home(),search_screen(),get_screen()];

  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final items = <Widget> [Icon(Icons.home,size:30),
    Icon(Icons.favorite,size:30,color: Color.fromARGB(255, 228, 52, 52),),
    Icon(Icons.shopping_cart,size:30,),
     Icon(Icons.search,size:30,),
      Icon(Icons.image,size:30,),
    ];
    return Scaffold(
      backgroundColor: bgcolor1,
      body: screens[selectedindex],

      bottomNavigationBar: CurvedNavigationBar(
        height:60,
        items:items,
        onTap: onitemtapped,
      
      ),
    );
  }
}











