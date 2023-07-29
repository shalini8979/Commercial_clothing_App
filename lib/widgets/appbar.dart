
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class appbar extends StatelessWidget implements PreferredSizeWidget
{
  final String title;
  final IconData? appbaricon;
  final Color? appbartextcolor;
  final double? appbarsize;  
  appbar({required this.title , this.appbaricon,this.appbartextcolor, this.appbarsize, });
  
  // set actionIcon(Icon actionIcon) {actionIcon = Icon(appbaricon);}
  // appbar({required this.appbaricon});
  // appbar({required this.appbartextcolor});  @override
  Widget build(BuildContext context){
    return AppBar(
      // Padding:Padding(padding: EdgeInsets.only(left: 20.0)
      
      title: Text(title,
        style: GoogleFonts.poppins(
          fontSize: appbarsize,
          color:appbartextcolor),),
      backgroundColor: Colors.transparent,
      actions: [Icon(appbaricon)],
      
      );}
      
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}







