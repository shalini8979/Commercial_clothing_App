import 'package:flutter/material.dart';
import '../../../widgets/widget.dart';


class MyHomePage3 extends StatefulWidget {
  const MyHomePage3({super.key});

  State<MyHomePage3> createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {


 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(221, 238, 237, 237),

      body: 
      SafeArea(child: SingleChildScrollView(
        child:
      Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi Shalini ",style: TextStyle(color: const Color.fromARGB(255, 172, 170, 170),fontSize: 15.0),),
          SizedBox(height: 4.0,),
          Padding(padding: EdgeInsets.symmetric(vertical: 5.0,),
          child: Row(
             children: [
            Text("What is your outfit Today ? ",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
            SizedBox(width: 70.0,),
            // CircleAvatar(child:Icon(Icons.circle_notifications_rounded,color: Colors.black,),backgroundColor: Colors.white,),
            Icon(Icons.circle_notifications_rounded,color: Colors.black,size: 40,),
          ],),
          ),
          SizedBox(height: 30.0,),

          Searchbar1("Search Product "),
          
          SizedBox(height: 30,),
          
          blackcont(),

          SizedBox(height: 30,),

          Text("Special Items ",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold),),

          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.all(1.0),
            child: gridMap(),
            
          ),
          
              
          ],),

      ),),),
     
    );
  }
}



class gridMap extends StatefulWidget {
   gridMap({super.key});


  @override
  State<gridMap> createState() => gridMapState();
}

class gridMapState extends State<gridMap> {
 
  final List<Map<String, dynamic>> gridMap = [

    {
      "title": "Tops & Tees",
      "price": "\₹3500",
      "brand": "BIBA",
      "images": "https://m.media-amazon.com/images/I/81Qelj0EE2L._AC_UL400_.jpg",
    },
      {
      "title": "Sarees",
      "price": "\₹2000",
       "brand": "Lymio",
      "images": "https://m.media-amazon.com/images/I/81RHVG+nkCL._AC_UL400_.jpg",
    },
      {
      "title": "Kurta",
      "price": "\₹2550",
       "brand": "Ritu Kumar",
      "images": "https://m.media-amazon.com/images/I/61Ia9a2VN0L._AC_UL400_.jpg",
      },

      {
      "title": "Dresses",
      "price": "\₹4000",
       "brand": "Satya Paul",
      "images": "https://m.media-amazon.com/images/I/41R98pCYwtL._UY741_.jpg",
    },
      {
      "title": "Tops & Tees",
      "price": "\₹2800",
       "brand": "Levis",
      "images": "https://m.media-amazon.com/images/I/715WT7FfiDL._UY741_.jpg",
    },
      {
      "title": "Sarees",
      "price": "\₹3200",
       "brand": "Symbol",
      "images": "https://m.media-amazon.com/images/I/815Lu9D5EQL._AC_UL400_.jpg",
    },
      {
      "title": "Dresses",
      "price": "\₹2500",
       "brand": "BIBA",
      "images": "https://m.media-amazon.com/images/I/616rH+QGWIL._UY741_.jpg",
    },
      {
      "title": "Kurtas",
      "price": "\₹1800",
       "brand": "Allen Solly",
      "images": "https://m.media-amazon.com/images/I/61wRGIetAZL._AC_UL400_.jpg",
    },
      {
      "title": "Tops & Tees",
      "price": "\₹1150",
       "brand": "ONLY",
      "images": "https://m.media-amazon.com/images/I/51YUdTGQZtL._AC_UL400_.jpg",
    },

  ];


  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 15,mainAxisExtent: 280),
        itemCount: gridMap.length,
        itemBuilder: (_, index){
          return Container(
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.white,),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                child:
                  ClipRRect(borderRadius: 
                  BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                  child:Image.network("${gridMap.elementAt(index)["images"]}",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  ),
                  ),),

              Padding(padding: const EdgeInsets.all(1.0),
              child: Column(
                children: [

                   Text('${gridMap.elementAt(index)['brand']}',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.pinkAccent),),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Text('${gridMap.elementAt(index)['title']}',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
                  const SizedBox(
                    height: 3.0,
                  ),
                   Text('${gridMap.elementAt(index)['price']}',style: TextStyle(fontSize: 15),),
                   SizedBox(height: 2.0,),
                  Row(children: [
                    Icon(Icons.favorite_border_outlined,),
                     SizedBox(width:100),
                     Icon(Icons.shopping_cart_outlined,),

                  ],)
                
                ],
              ),
              )
            ],),

      
          );
        
        }
    
    );
      
    
  }
}


