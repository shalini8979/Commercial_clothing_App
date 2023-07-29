import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../model/model.dart';

class post_screen extends StatefulWidget {
  const post_screen({super.key});

  @override
  State<post_screen> createState() => post_screenState();
}

class post_screenState extends State<post_screen> {

  TextEditingController txt1_ctrl = TextEditingController();
  TextEditingController txt2_ctrl = TextEditingController();
  TextEditingController txt3_ctrl = TextEditingController();
  TextEditingController txt4_ctrl = TextEditingController();
  TextEditingController txt5_ctrl = TextEditingController();

  Map<dynamic,dynamic> Product1= {};

  Future <bool> Post1( Product Product1) async {
      try { final collectionRef = FirebaseFirestore.instance.collection("Clothes");
    await collectionRef.doc().set(Product1.toJson());
    return true;  }
  catch (e) {    
    return false; 
     }
  }


  void submit1() async {
    bool success = await Post1(
      Product(
        productname: txt1_ctrl.text,
        brand: txt2_ctrl.text,
        type: txt3_ctrl.text,
        price: txt4_ctrl.text,
        image: txt5_ctrl.text,
      ),
    );

    if (success) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Product submitted successfully.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to submit the product.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Post Form")),
      body: 
      SingleChildScrollView(
        child: Column(children: [
      
         Container(
              child:Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child:Text("clothname",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),),
                  
                  SizedBox(height: 5.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: txt1_ctrl,
                    style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"product name",
                        ),
                         onChanged:  (value){
                          Product1["productname"]= value;
                        },
                      ),), ],), ),),

                   SizedBox(height: 5,),

                   Container(

              child:Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
              
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child:Text("brand name",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),),
                  
                  SizedBox(height: 5.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: txt2_ctrl,
                    style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"brand",
                        // hintText: hinttxt,
                        ),
                         onChanged:  (value){
                          Product1["brand"]= value;
                        },
                      ),
                  ),],
        ),),),


        SizedBox(height: 5,),

        Container(

              child:Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
              
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child:Text("tag",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),),
                  
                  SizedBox(height: 5.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: txt3_ctrl,
                    style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"Tag",
                        // hintText: hinttxt,
                        ),
                         onChanged:  (value){
                          Product1["type"]= value;
                        },
                      ),
                  ),],
        ),),),

        SizedBox(height: 5,),

        Container(

              child:Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
              
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child:Text("price",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),),
                  
                  SizedBox(height: 5.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: txt4_ctrl,
                    style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"price",
                        // hintText: hinttxt,
                        ),

                        onChanged:  (value){
                          Product1["price"]= value;
                        },
                      ),
                  ),],
        ),),),

        SizedBox(height: 5,),

        Container(

              child:Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
              
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child:Text("image" ,style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),),
                  
                  SizedBox(height: 5.0,),
                  
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: txt5_ctrl,
                    style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        labelText:"image Url",
                        // hintText: hinttxt,
                        ),
                        onChanged: (value) {
                          Product1["image"]=value;
                        },
                      ),
                  ),],
        ),),),

        SizedBox(height: 5,),

         Container(

          width: 120,
          child:ElevatedButton(onPressed: (){
            Post1(Product(productname: txt1_ctrl.text, brand: txt2_ctrl.text,type: txt3_ctrl.text,price: txt4_ctrl.text, image:txt5_ctrl.text),);
          }, 
          style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(10),),

            backgroundColor: Colors.blueAccent,),
            child: Text("Submit",style:const TextStyle(fontSize: 15,color: Colors.white)),

  ),),
    ],),),);
  }
}












