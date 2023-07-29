import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project_login/detailpage2.dart';
import '../../../model/model.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {

  
  final List<Product> gridMap = [];
  
  
  Future <void> gridview() async{

  final collectionref = FirebaseFirestore.instance.collection("Clothes");
  
  final docref = await collectionref.get();
  docref.docs.forEach((element) {
    gridMap.add(Product.fromJson(element.data()));
  });
  print(gridMap);

}
@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("  All Categories  ") ,leading: Icon(Icons.shopping_cart),),
      body: SafeArea(child: SingleChildScrollView(
        child:FutureBuilder(future: gridview(),
      builder: (context, Snapshot){

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 15,mainAxisExtent: 280),
        itemCount: gridMap.length,
        itemBuilder: (_, index){

          return Column(
            
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.white,),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                    child:
                      ClipRRect(borderRadius: 
                      BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                      child:InkWell(
                         onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    detail_page_screen(clothpage:gridMap[index]
                                    ),
                              ),
                            );
                          },
                    child: Image.network("${gridMap[index].image}",
                    height: 170,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    ),
                  ),
                 ),),

                  Padding(padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: [

                       Text('${gridMap[index].brand}',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.pinkAccent),),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text('${gridMap[index].productname}',style: TextStyle(fontSize:14,fontWeight: FontWeight.w700),),
                      const SizedBox(
                        height: 3.0,
                      ),
                       Text('${gridMap[index].price}',style: TextStyle(fontSize: 14),),
                       SizedBox(height: 2.0,),

                       Text('${gridMap[index].type}',style: TextStyle(fontSize:14,fontWeight: FontWeight.w700),),
                      const SizedBox(
                        height: 3.0,
                      ),

                       const Row(children:[
                        Icon(Icons.shopping_cart,color: Colors.amberAccent,),
                        SizedBox(width: 3,),
                        Icon(Icons.favorite_rounded,color: Colors.lightBlueAccent,),
                       ])
                    
                    ],
                  ),
                  
                  )
                ],),

              ),
            ],
          );
        }
    
    );
      },
      ),
      ),),);
  }
}







