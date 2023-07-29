import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/color.dart';


Widget sideheadingtext (String text1,  double size1){
  return Text(text1,style: GoogleFonts.arima(color:color3,textStyle: TextStyle(fontSize: size1,fontWeight: FontWeight.normal) ),);
}


Widget sideheadingtext2 (String text2, double size2){
  return Text(text2,style: GoogleFonts.arima(color:color2,textStyle: TextStyle(fontSize: size2,fontWeight: FontWeight.bold) ));
}

Widget container1 (String image1 , String price1 , String brand , String cloth){
  return Container(height: 180,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),),
  padding: EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(

        children: [
          Container(height: 135,width:160,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),topRight:const Radius.circular(10.0) ),color:Colors.white ),
          child:Image(image: AssetImage(image1),height: 170,width: 200,),),

          Container(
            height: 45,width:160,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
            color: Colors.white,),
            
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Padding(padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween ,
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: 
                    Text(cloth,style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,color: Colors.black )),
                    ),
                  Padding(padding: EdgeInsets.only(top:2.0),
                  child:  
                    Text(price1,style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,color: Colors.black ),),
                ),
                ],
              ), 
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                child: 
                    Text(brand,style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,color: Colors.grey )),
                    ),

              ],
          ),
                  ),
        ],
      ),
      );
}

// _________________________________________________________________________________________________________________


Widget Searchbar1( String hintText1){

  return Container(width: 400,height: 50,
             child: TextField(controller: SearchController(),
                decoration: InputDecoration(prefixIcon:Icon(Icons.search),hintText:hintText1,
                fillColor:Colors.white,filled: true,border:OutlineInputBorder( 
                borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none  )),
             ),
          );
}

// _________________________________________________________________________________________________________________


Widget blackcont(){
  return  Container(height: 200,width: 350,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20.0),),
          child:  Row(children: [
            Container(height:200,width:200,child: 
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children:[
            
                   SizedBox(height:25),
                   Text("Last discount",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white )),
                  SizedBox(height: 8.0,),
                   Text("up to 70%",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:color4,)),
                  SizedBox(height: 8.0,),
                   Text("shop Now & Get Free",style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color:color2,)),
                  SizedBox(height: 8.0,),
                   Text("shipping to your Home",style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color:color2,)),
            
              ],
              ),
            ),),
            SizedBox(width:10,),
            Container(height:200 ,width: 140,child:ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),topRight: Radius.circular(10.0)),child: Image.asset("image/blackimg.png",fit: BoxFit.cover,),),
            
            
            ),],

          ),);

}

// ______________________________________________________________________________________________________________-


Widget txtcont(txt1,labeltxt,hinttxt,textcont){


  
  return Container(

              child:Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
              
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child:Text(txt1,style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),),
                  
                  SizedBox(height: 5.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: textcont,
                    style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:labeltxt,
                        hintText: hinttxt,
                        )
                      ),
                  ),],
        ),),);
  }


// _______________________________________________________________________________________________























