// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.indigo,
//         title: Text("تطابق الصور"),
//         ),
//       backgroundColor: Colors.indigo[200], 
//       body:mm(), 
//     ),
//   ));
// }
// class mm extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text("حاول مرة أخرى",
//         style:TextStyle(
//            fontSize: 40,
//            color: Colors.white
//         ) ,),
//         Row(
          
//           children: [
//             Expanded(
//               // flex: 2,
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Image.asset("images/image-1.png"),
//               )  , //كود مختصر للي تحت
//                 // image:AssetImage("images/image-1.png")),
//             ),
//             Expanded(
//               // flex: 8,
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Image.asset("images/image-1.png"),
//               ) ,
//                 // image:AssetImage("images/image-1.png"))
//               )
//           ],

//         )
//       ],
//     );
//   }
// }






//-----------------------------------------------------------------------------------------------------------------------







// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.indigo,
//         title: Text("تطابق الصور"),
//         ),
//       backgroundColor: Colors.indigo[200], 
//       body:mm(), 
//     ),
//   ));
// }
// class mm extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text("حاول مرة أخرى",
//         style:TextStyle(
//            fontSize: 40,
//            color: Colors.white
//         ) ,),
//         Row(
          
//           children: [
//             Expanded(
//               child:TextButton(
//                 onPressed: (){
//                   print("the left button");
//                 },
//                 child:Image.asset("images/image-1.png"))  , //كود مختصر للي تحت
//                 // image:AssetImage("images/image-1.png")),
//             ),
//             Expanded(
//               // flex: 8,
//               child: TextButton(
//                 onPressed: (){   // إذاضغطت على الزر يطلع الكلام إلي كاتبته داخل الفنكشن في الكونسيلار مو شاشة االجوال
//                   print("the right button");
//                 },
//                 child: Image.asset("images/image-1.png")) ,
//                 // image:AssetImage("images/image-1.png"))
//               )
//           ],

//         )
//       ],
//     );
//   }
// }







//-----------------------------------statefulwidget----------------------------------------------------
import 'package:flutter/material.dart';
import "dart:math";  //مكتبة حق المسائل الرياضية ,نستعملها هنا لتوليد رقم عشوائي من بين عدد من الإرقام
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("تطابق الصور"),
        ),
      backgroundColor: Colors.indigo[200], 
      body:mm(), 
    ),
  ));
}
class mm extends StatefulWidget {
  const mm({super.key});

  @override
  State<mm> createState() => _mmState();
}

class _mmState extends State<mm> {
  int LiftNumImage=1;
  int RightNumImage=1;
  void change(){
      setState(() {
      LiftNumImage=Random().nextInt(8)+1;  //تولد رقم عشوائي
      RightNumImage=Random().nextInt(8)+1;            
                  });

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          RightNumImage==LiftNumImage?  //إذا كانت الصورتين متطابقة يطلع ذا الجملة
          "مبروك لقد فزت":
          "حاول مرة أخرى",
        style:TextStyle(
           fontSize: 40,
           color: Colors.white
        ) ,),
        Row(
          
          children: [
            Expanded(
              child:TextButton(
                onPressed: (){
                  change();
                },
                child:Image.asset("images/image-$LiftNumImage.png"))  , //كود مختصر للي تحت
                // image:AssetImage("images/image-1.png")),
            ),
            Expanded(
              // flex: 8,
              child: TextButton(
                onPressed: (){   // إذاضغطت على الزر يطلع الكلام إلي كاتبته داخل الفنكشن في الكونسيلار مو شاشة االجوال

                  change();

                },
                child: Image.asset("images/image-$RightNumImage.png")) ,
                // image:AssetImage("images/image-1.png"))
              )
          ],
        )
      ],
    );
  }
}


  




