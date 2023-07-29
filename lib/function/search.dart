// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';



// class search_screen extends StatefulWidget {

//   search_screen({super.key});
//   @override
//   State<search_screen> createState() => search_screenState();
// }



// class search_screenState extends State<search_screen> {
//   final searchcontroller = TextEditingController();

//   List <Map<String, dynamic>> list1= [];


//   Map<String, dynamic>? usermap;
//   String? type;

//   Future<void> onSearch() async {
//     try {
//       final collectionref= FirebaseFirestore.instance.collection("Clothes");

//       final mylawlist= await  collectionref.get();
//       mylawlist.docs.forEach((element) {
//         if (element.data()["type"] == searchcontroller.text){
//           usermap=element.data();
//           list1.add(usermap!);
//         }
//       print(list1);
//       print(1);
//       });

//       // FirebaseFirestore _firestore = FirebaseFirestore.instance;

//       // await _firestore
//       //     .collection("Clothes")
//       //     .where("type", isEqualTo: searchcontroller.text)
//       //     .get()
//       //     .then((value) {
//       //   setState(() {
//       //     usermap = value.docs[1].data();
//       //   });
//       // });
//       // print(usermap);
//     } catch (error) {
//       print("An error occured $error");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Search screen"),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
//             child: Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 260,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(40),
//                           color: Colors.black12),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: TextField(
//                           controller: searchcontroller,
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                   borderSide: BorderSide.none,
//                                   borderRadius: BorderRadius.circular(50)),
//                               labelText: "Search",
//                               hintText: "Search clothes"),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         onSearch();
//                       },
//                       child: Container(
//                         height: 60,
//                         width: 60,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(40),
//                             color: Colors.blue),
//                         child: const Center(
//                           child: Text("Search",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                               )),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//                 usermap != null
//                     ? Column(
//                         children: [
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Image.network(usermap!["image"] == null
//                               ? "https://cdn.shopify.com/s/files/1/0341/4805/7228/products/1648709507344-47cvdjdujwo9qwll-589F61E4CE38BE3B9A06EE9CB3E20F43_540x.jpg?v=1673863216"
//                               : usermap!["image"]),
                         
                        
//                              SizedBox(height:20),

//                        Padding(
//                          padding: const EdgeInsets.only(left: 70),
//                          child: const Row(children:[
//                           Padding(padding:EdgeInsets.all(20)),
//                           Icon(Icons.star,color: Colors.amberAccent,),
//                           SizedBox(width: 3,),
//                           Icon(Icons.star,color:Colors.amberAccent,),
//                           SizedBox(width: 3,),
//                           SizedBox(width: 3,),
//                           Icon(Icons.star,color:Colors.amberAccent,),
//                           SizedBox(width: 3,),
//                           Icon(Icons.star,color:Colors.amberAccent,),
//                            SizedBox(width: 3,),
//                           Icon(Icons.star_half,color:Colors.amberAccent,),
                                             
//                          ]),
//                        ),
                        
//                         SizedBox(height: 30,),
//                           Text(
//                             usermap!["type"],
//                             style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
//                           ),
//                         SizedBox(height: 20,),
                      
//                         Text('brand : ${usermap?["brand"]}',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
//                       const SizedBox(
//                         height: 3.0,
//                       ),


//                        SizedBox(height: 20,),

//                        Text('${usermap?["productname"]}',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
//                       const SizedBox(
//                         height: 20.0,
//                       ),
//                        Text('Price  ₹${usermap?["price"]}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
//                        SizedBox(height: 2.0,),

//                       //  Text('${usermap?["type"]}',style: TextStyle(fontSize:14,fontWeight: FontWeight.w700),),
//                       // const SizedBox(
//                       //   height: 3.0,
//                       // ),

//                        const Row(children:[
//                         Icon(Icons.shopping_cart,color: Color.fromARGB(255, 29, 29, 27),),
//                         SizedBox(width: 270,),
//                         Icon(Icons.favorite_rounded,color: Color.fromARGB(255, 238, 68, 17),),
//                         SizedBox(width: 30,),
                      
//                        ]),
                        
//                       SizedBox(height: 25,),


                        
//                         Padding(
//                           padding: const EdgeInsets.all(40.0),
//                           child: Text('FREE Delivery by Amazon',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color: const Color.fromRGBO(158, 158, 158, 1)),),
//                         ),
//                       const SizedBox(
//                         height: 3.0,
//                       ),
                      
                       

                      
//                         ],
//                       )
//                     : SizedBox()
//               ],
//             ),
//           ),
//         ));
//   }
// }


// ______________________________________________________________________________________________



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// import '../model/model.dart';

class search_screen extends StatefulWidget {

  search_screen({super.key});
  @override
  State<search_screen> createState() => search_screenState();
}



class search_screenState extends State<search_screen> {
  final searchcontroller = TextEditingController();

  List <Map<String, dynamic>> list1= [];


  Map<String, dynamic>? usermap;
  String? type;

  Future<void> onSearch() async {
    try {
      final collectionref= FirebaseFirestore.instance.collection("Clothes");

      final mylawlist= await  collectionref.get();
      mylawlist.docs.forEach((element) {
        if (element.data()["type"] == searchcontroller.text){
          usermap=element.data();
          list1.add(usermap!);
        }
      print(list1);
      print(1);
      });

      FirebaseFirestore _firestore = FirebaseFirestore.instance;

      await _firestore
          .collection("Clothes")
          .where("type", isEqualTo: searchcontroller.text)
          .get()
          .then((value) {
        setState(() {
          usermap = value.docs[0].data();
        });
      });
      print(usermap);
    } catch (error) {
      print("An error occured $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search screen"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black12),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          controller: searchcontroller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(50)),
                              labelText: "Search",
                              hintText: "Search clothes"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        onSearch();
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue),
                        child: const Center(
                          child: Text("Search",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                usermap != null
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.network(usermap!["image"] == null
                              ? "https://cdn.shopify.com/s/files/1/0341/4805/7228/products/1648709507344-47cvdjdujwo9qwll-589F61E4CE38BE3B9A06EE9CB3E20F43_540x.jpg?v=1673863216"
                              : usermap!["image"]),
                         
                        
                             SizedBox(height:20),

                       Padding(
                         padding: const EdgeInsets.only(left: 70),
                         child: const Row(children:[
                          Padding(padding:EdgeInsets.all(20)),
                          Icon(Icons.star,color: Colors.amberAccent,),
                          SizedBox(width: 3,),
                          Icon(Icons.star,color:Colors.amberAccent,),
                          SizedBox(width: 3,),
                          SizedBox(width: 3,),
                          Icon(Icons.star,color:Colors.amberAccent,),
                          SizedBox(width: 3,),
                          Icon(Icons.star,color:Colors.amberAccent,),
                           SizedBox(width: 3,),
                          Icon(Icons.star_half,color:Colors.amberAccent,),
                                             
                         ]),
                       ),
                        
                        SizedBox(height: 30,),
                          Text(
                            usermap!["type"],
                            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                          ),
                        SizedBox(height: 20,),
                      
                        Text('brand : ${usermap?["brand"]}',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                      const SizedBox(
                        height: 3.0,
                      ),


                       SizedBox(height: 20,),

                       Text('${usermap?["productname"]}',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
                      const SizedBox(
                        height: 20.0,
                      ),
                       Text('Price  ₹${usermap?["price"]}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       SizedBox(height: 2.0,),

                      //  Text('${usermap?["type"]}',style: TextStyle(fontSize:14,fontWeight: FontWeight.w700),),
                      // const SizedBox(
                      //   height: 3.0,
                      // ),

                       const Row(children:[
                        Icon(Icons.shopping_cart,color: Color.fromARGB(255, 29, 29, 27),),
                        SizedBox(width: 270,),
                        Icon(Icons.favorite_rounded,color: Color.fromARGB(255, 238, 68, 17),),
                        SizedBox(width: 30,),
                      
                       ]),
                        
                      SizedBox(height: 25,),


                        
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Text('FREE Delivery by Amazon',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color: const Color.fromRGBO(158, 158, 158, 1)),),
                        ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      
                       

                      
                        ],
                      )
                    : SizedBox()
              ],
            ),
          ),
        ));
  }
}

// _______________________________________________________________________________________________________________


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// // import '../model/model.dart';

// class search_screen extends StatefulWidget {

//   search_screen({super.key});
//   @override
//   State<search_screen> createState() => search_screenState();
// }



// class search_screenState extends State<search_screen> {
//   final searchcontroller = TextEditingController();

//   List <Map<String, dynamic>> list1= [];


//   Map<String, dynamic>? usermap;
//   String? type;

//   Future<void> onSearch() async {
//     try {
//       final collectionref= FirebaseFirestore.instance.collection("Clothes");

//       final mylawlist= await  collectionref.get();
//       mylawlist.docs.forEach((element) {
//         if (element.data()["type"] == searchcontroller.text){
//           usermap=element.data();
//           list1.add(usermap!);
//         }
//       print(list1);
//       print(1);
//       });

//       // FirebaseFirestore _firestore = FirebaseFirestore.instance;

//       // await _firestore
//       //     .collection("Clothes")
//       //     .where("type", isEqualTo: searchcontroller.text)
//       //     .get()
//       //     .then((value) {
//       //   setState(() {
//       //     usermap = value.docs[1].data();
//       //   });
//       // });
//       // print(usermap);
//     } catch (error) {
//       print("An error occured $error");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Search screen"),
//         ),
//         body: 
//         SafeArea(child: SingleChildScrollView(
//         child:FutureBuilder(future: onSearch(),
//       builder: (context, Snapshot){

//         return GridView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 15,mainAxisExtent: 280),
//         itemCount: usermap?.length,
//         itemBuilder: (_, index){

//           return Column(
        
//         // SingleChildScrollView(
//         //   child: Padding(
//         //     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
//         //     child: Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 260,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(40),
//                           color: Colors.black12),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: TextField(
//                           controller: searchcontroller,
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                   borderSide: BorderSide.none,
//                                   borderRadius: BorderRadius.circular(50)),
//                               labelText: "Search",
//                               hintText: "Search clothes"),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         onSearch();
//                       },
//                       child: Container(
//                         height: 60,
//                         width: 60,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(40),
//                             color: Colors.blue),
//                         child: const Center(
//                           child: Text("Search",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                               )),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//                 usermap != null
//                     ? Column(
//                         children: [
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Image.network(usermap!["image"] == null
//                               ? "https://cdn.shopify.com/s/files/1/0341/4805/7228/products/1648709507344-47cvdjdujwo9qwll-589F61E4CE38BE3B9A06EE9CB3E20F43_540x.jpg?v=1673863216"
//                               : usermap!["image"]),
                         
                        
//                              SizedBox(height:20),

//                        Padding(
//                          padding: const EdgeInsets.only(left: 70),
//                          child: const Row(children:[
//                           Padding(padding:EdgeInsets.all(20)),
//                           Icon(Icons.star,color: Colors.amberAccent,),
//                           SizedBox(width: 3,),
//                           Icon(Icons.star,color:Colors.amberAccent,),
//                           SizedBox(width: 3,),
//                           SizedBox(width: 3,),
//                           Icon(Icons.star,color:Colors.amberAccent,),
//                           SizedBox(width: 3,),
//                           Icon(Icons.star,color:Colors.amberAccent,),
//                            SizedBox(width: 3,),
//                           Icon(Icons.star_half,color:Colors.amberAccent,),
                                             
//                          ]),
//                        ),
                        
//                         SizedBox(height: 30,),
//                           Text(
//                             usermap!["type"],
//                             style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
//                           ),
//                         SizedBox(height: 20,),
                      
//                         Text('brand : ${usermap?["brand"]}',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
//                       const SizedBox(
//                         height: 3.0,
//                       ),


//                        SizedBox(height: 20,),

//                        Text('${usermap?["productname"]}',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
//                       const SizedBox(
//                         height: 20.0,
//                       ),
//                        Text('Price  ₹${usermap?["price"]}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
//                        SizedBox(height: 2.0,),

//                       //  Text('${usermap?["type"]}',style: TextStyle(fontSize:14,fontWeight: FontWeight.w700),),
//                       // const SizedBox(
//                       //   height: 3.0,
//                       // ),

//                        const Row(children:[
//                         Icon(Icons.shopping_cart,color: Color.fromARGB(255, 29, 29, 27),),
//                         SizedBox(width: 270,),
//                         Icon(Icons.favorite_rounded,color: Color.fromARGB(255, 238, 68, 17),),
//                         SizedBox(width: 30,),
                      
//                        ]),
                        
//                       SizedBox(height: 25,),


                        
//                         Padding(
//                           padding: const EdgeInsets.all(40.0),
//                           child: Text('FREE Delivery by Amazon',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color: const Color.fromRGBO(158, 158, 158, 1)),),
//                         ),
//                       const SizedBox(
//                         height: 3.0,
//                       ),
                      
                       

                      
//                         ],
//                       )
//                     : SizedBox()
//               ],
//             );},
//           );},),
//         )),);
//   }
// }



