// import 'package:flutter/material.dart';

// class SPIWormRun extends StatefulWidget {
//   const SPIWormRun({Key? key}) : super(key: key);

//   @override
//   _SPIWormState createState() => new _SPIWormState();
// }

// class _SPIWormState extends State<SPIWormRun> {
//   var controller;

//   @override
//   void initState() {
//     controller = new PageController(
//       viewportFraction: 0.8,
//     );

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unnecessary_new
//     return new MaterialApp(
//       title: 'SPI Worm',
//       home: new Scaffold(
//         appBar: AppBar(title: new Text('SPI Worm')),
//         body: Container(
//             width: double.infinity,
//             height: 400,
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 300,
//                   child: new PageView(
//                     controller: controller,
//                     children: <Widget>[
//                       SizedBox(
//                         width: double.infinity,
//                         height: 300,
//                         child: Card(
//                           color: Colors.yellow,
//                           child: Center(
//                             child: Text('Simple Text,Keep Swiping'),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: double.infinity,
//                         height: 300,
//                         child: Card(
//                           color: Colors.white70,
//                           child: Center(
//                             child: Icon(Icons.favorite),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: double.infinity,
//                         height: 300,
//                         child: Card(
//                           color: Colors.black26,
//                           child: Center(
//                               child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Image.asset("Images/Dart_Logo.png"),
//                               Text("Dart Logo!")
//                             ],
//                           )),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SmoothPageIndicator(
//                     controller: controller,
//                     count: 3,
//                     effect: WormEffect(),
//                   ),
//                 )
//               ],
//             )),
//       ),
//     );
//   }
// }
