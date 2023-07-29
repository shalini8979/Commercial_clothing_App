import 'package:flutter/material.dart';
import '../../../widgets/widget.dart';


// class MyHomePage5 extends StatefulWidget {
//    MyHomePage5({super.key});


//   @override
//   State<MyHomePage5> createState() => _MyHomePage5State();
// }

// class _MyHomePage5State extends State<MyHomePage5> {
//   var arr1=[container1('image/saree.jpg','1200','Kanchiwaram','Saree'),container1('image/kurta1.jpg','2500','Zara','Kurta-set'),
//       container1('image/saree1.jpg','1200','Kanchiwaram','Saree'),container1('image/saree2.jpg','1200','Kanchiwaram','Saree'),
//       container1('image/saree3.jpg','1200','Kanchiwaram','Saree'),container1('image/saree4.jpg','1200','Kanchiwaram','Saree'),
//       container1('image/saree5.jpg','1200','Kanchiwaram','Saree'),container1('image/saree6.jpg','1200','Kanchiwaram','Saree')
  
//   ];


//   @override
//   Widget build(BuildContext context) {

//     return 
//     Scaffold(
//       backgroundColor: color2,
//       body:  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
//         child:
//         GridView.builder(itemBuilder: (context,index){
//           return arr1[index];

//           },itemCount : arr1.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 12,crossAxisSpacing: 5),
//           ),
//       ),
      
//     );
//   }
// }


class grid1 extends StatefulWidget {
   grid1({super.key});


  @override
  State<grid1> createState() => grid1State();
}

class grid1State extends State<grid1> {
  var arr1=[container1('image/saree.jpg','1200','Kanchiwaram','Saree'),container1('image/kurta1.jpg','2500','Zara','Kurta-set'),
      container1('image/saree1.jpg','1200','Kanchiwaram','Saree'),container1('image/saree2.jpg','1200','Kanchiwaram','Saree'),
      container1('image/saree3.jpg','1200','Kanchiwaram','Saree'),container1('image/saree4.jpg','1200','Kanchiwaram','Saree'),
      container1('image/saree5.jpg','1200','Kanchiwaram','Saree'),container1('image/saree6.jpg','1200','Kanchiwaram','Saree')
  
  ];


  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: arr1.length,
        itemBuilder: (context, index){
          return Container(
            color: Colors.redAccent,
          );
        }
    
    );
      
    
  }
}




