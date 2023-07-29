
import 'package:flutter/material.dart';
import 'package:flutter_new_project_login/model/model.dart';

class detail_page_screen extends StatelessWidget {
  
  final Product clothpage;

  const detail_page_screen({required this.clothpage});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
        appBar: AppBar(
          title: Text("Cloth Details "),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: Column(
              children: [
                
                Container(height: 300,width: 200,
                
                child: Image.network('${clothpage.image}',fit:BoxFit.fill),
                ),
                const SizedBox(height: 5.0, ),
                Text('${clothpage.type}',style:TextStyle(fontSize:32,fontWeight:FontWeight.bold,color:Color.fromARGB(255, 235, 42, 106))),
                const SizedBox(height: 20.0, ),
                Text('${clothpage.productname}',style:TextStyle(fontWeight:FontWeight.bold,fontSize:27)),
                const SizedBox(height: 20.0, ),
              
                 Text('${clothpage.price}',style:TextStyle(color:Color.fromARGB(255, 12, 12, 12),fontSize:24,fontWeight:FontWeight.bold)),
                const SizedBox(height: 20.0, ), 
               Text('${clothpage.brand}',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:22)),
                const SizedBox(height: 30.0, ), 

                const Row(children:[
                  Icon(Icons.shopping_cart,color: Color.fromARGB(255, 12, 11, 12),size:40),
                  SizedBox(width: 270,),
                  Icon(Icons.favorite_rounded,color: Color.fromARGB(255, 255, 59, 59),size:40),
                 ]),
               const SizedBox(height: 20.0, ), 

               Column(
                children:[
                  Container(
                    decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(25.0)),
                    height:50,width:300,
                    margin:EdgeInsets.all(20.0),
                    child:Text("Add to Cart",
                    style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black,fontSize:20),
                    )

                  ),
                  SizedBox(height:10),
                
                Container(
                    decoration:BoxDecoration(color:Color.fromARGB(255, 255, 147, 59),borderRadius:BorderRadius.circular(25.0)),
                    height:50,width:300,
                    child:Text("Buy Now",
                    style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black,fontSize:20),
                    )

                  ),
                ]
               )
              ],),),),
                   

     );
   }
}



