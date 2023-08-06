// _______________________________________________________________________________________________________

//                                           Using ListView 

// ________________________________________________________________________________________________________



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';




class get_screen extends StatefulWidget {
  const get_screen({super.key});

  @override
  State<get_screen> createState() => get_screenState();
}

class get_screenState extends State<get_screen> {
  List cloth_image = [];
  List cloth_brand = [];
  List cloth_type = [];
  List cloth_price = [];

  Future<void> fetchcloth() async {
    try {
      CollectionReference movieref =
          FirebaseFirestore.instance.collection("Clothes");

      QuerySnapshot snapshot = await movieref.get();

      snapshot.docs.forEach((DocumentSnapshot docx) {
        print("ID ${docx.id}");
        print("name : ${docx['type']}");
        print("image : ${docx['image']}");
        cloth_image.add(docx['image']);
        print(cloth_image);
        cloth_brand.add(docx['brand']);
        cloth_type.add(docx['type']);
        cloth_price.add(docx['price']);


      });
    } catch (e) {
      print("error is : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Screen "),),
        body: FutureBuilder(
      future: fetchcloth(),
      builder: (context, snapshot) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 600,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top:0.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                cloth_image[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          const Row(children: [
                            Padding(padding: EdgeInsets.only(left: 30)),
                            Icon(
                              Icons.shopping_cart,
                              color: Color.fromARGB(255, 29, 29, 27),
                            ),
                            SizedBox(
                              width: 270,
                            ),
                            Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 238, 68, 17),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ]),

                          SizedBox(height: 20,),
                      
                        Text(cloth_brand[index],style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                      const SizedBox(
                        height: 3.0,
                      ),


                       SizedBox(height: 20,),

                       Text(cloth_type[index],style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
                      const SizedBox(
                        height: 20.0,
                      ),
                       Text(cloth_price[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       SizedBox(height: 30.0,),
                      
                      Divider(color: Color.fromARGB(255, 136, 131, 131) , height: 20,),
                         
                        ],
                      ),
                    );
                  }),
            ),
          ],
        );
      },
    ));
  }
}



// _______________________________________________________________________________________________________

//                                         Using GridView

// ______________________________________________________________________________________________________



// class get_screen extends StatefulWidget {
//   const get_screen({super.key});

//   @override
//   State<get_screen> createState() => get_screenState();
// }

// class get_screenState extends State<get_screen> {
//   List cloth_image = [];
//   List cloth_brand = [];
//   List cloth_type = [];
//   List cloth_price = [];

//   Future<void> fetchcloth() async {
//     try {
//       CollectionReference movieref =
//           FirebaseFirestore.instance.collection("Clothes");

//       QuerySnapshot snapshot = await movieref.get();

//       snapshot.docs.forEach((DocumentSnapshot docx) {
//         print("ID ${docx.id}");
//         print("name : ${docx['type']}");
//         print("image : ${docx['image']}");
//         cloth_image.add(docx['image']);
//         print(cloth_image);
//         cloth_brand.add(docx['brand']);
//         cloth_type.add(docx['type']);
//         cloth_price.add(docx['price']);


//       });
//     } catch (e) {
//       print("error is : $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder(
//       future: fetchcloth(),
//       builder: (context, snapshot) {
//         return GridView.builder(
//       physics:  AlwaysScrollableScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 15,mainAxisExtent: 280),
//         itemCount: cloth_image.length,
//         itemBuilder: (_, index){

//           return SingleChildScrollView(
//             child: Column(
              
//               children: [
//                 Container(
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.white,),
          
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
                    
//                     children: [
//                       Padding(padding: EdgeInsets.symmetric(horizontal: 25),
//                       child:
//                         ClipRRect(borderRadius: 
//                         BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                        
//                       child: Image.network(cloth_image[index],
//                       height: 170,
//                       width: double.infinity,
//                       fit: BoxFit.fill,
//                       ),
                    
//                    ),),
          
//                     Padding(padding: const EdgeInsets.all(1.0),
//                     child: Column(
//                       children: [
          
//                          Text(cloth_brand[index],style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.pinkAccent),),
//                         const SizedBox(
//                           height: 3.0,
//                         ),
//                         Text(cloth_type[index],style: TextStyle(fontSize:14,fontWeight: FontWeight.w700),),
//                         const SizedBox(
//                           height: 3.0,
//                         ),
//                          Text(cloth_price[index],style: TextStyle(fontSize: 14),),
//                          SizedBox(height: 2.0,),
          
          
//                          const Row(children:[
//                           Icon(Icons.shopping_cart,color: Colors.amberAccent,),
//                           SizedBox(width: 3,),
//                           Icon(Icons.favorite_rounded,color: Colors.lightBlueAccent,),
//                          ])
                      
//                       ],
//                     ),
                    
//                     )
//                   ],),
          
//                 ),
//               ],
//             ),
//           );
//         }
    
//     );
//       },
//     ));
//   }
// }


// this is a comment 