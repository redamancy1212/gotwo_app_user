// import 'package:flutter/material.dart';

// class Pickup extends StatefulWidget {
//   const Pickup({Key? key}) : super(key: key);

//   @override
//   State<Pickup> createState() => _PickupState();
// }

// class Place {
//   final String name;
//   Place(this.name);
// }

// class Popular {
//   final String placess;
//   Popular(this.placess);
// }

// final List<Place> places = [
//   Place(
//     'F1',
//   ),
//   Place(
//     'Bus',
//   ),
//   Place(
//     'Place 3',
//   ),
// ];
// final List<Popular> placess = [
//   Popular(
//     'F1',
//   ),
//   Popular(
//     'F2',
//   ),
//   Popular(
//     'F3',
//   ),
//   Popular(
//     'F4',
//   ),
//   Popular(
//     'F5',
//   ),
//   Popular(
//     'F6',
//   ),
// ];

// class _PickupState extends State<Pickup> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Join',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 27,
//                       color: Color(0xFF1A1C43),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 0.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all<Color>(
//                               Color(0xFFCCCCCC),
//                             ),
//                             minimumSize: MaterialStateProperty.all(
//                               const Size(90, 30),
//                             ),
//                           ),
//                           child: const Text(
//                             'Pickup',
//                             style: TextStyle(
//                               color: Color(0xFF1A1C43),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 25),
//                         Image.asset(
//                           'assets/images/motorcycle.png',
//                           height: 20,
//                         ),
//                         const SizedBox(width: 25),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all<Color>(
//                               const Color(0xFFCCCCCC),
//                             ),
//                             minimumSize: MaterialStateProperty.all(
//                               const Size(90, 30),
//                             ),
//                           ),
//                           child: const Text(
//                             'Drop',
//                             style: TextStyle(
//                               color: Color(0xFF1A1C43),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                         const Color(0xFF1A1C43),
//                       ),
//                       minimumSize:
//                           MaterialStateProperty.all(const Size(90, 30)),
//                     ),
//                     child: const Text(
//                       'search',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Divider(
//                       color: Color(0xFF1A1C43),
//                       thickness: 1,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Latest searches',
//                       style: TextStyle(
//                         color: Color(0xFF1A1C43),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: places.map((place) {
//                           return Padding(
//                             padding: const EdgeInsets.only(left: 10.0),
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all<Color>(
//                                   const Color(0xFFE5E3E3),
//                                 ),
//                                 minimumSize: MaterialStateProperty.all(
//                                   const Size(50, 20),
//                                 ),
//                               ),
//                               child: Text(
//                                 place.name,
//                                 style: const TextStyle(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Popular',
//                       style: TextStyle(
//                         color: Color(0xFF1A1C43),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                   ],
//                 ),
//               ),
//             ),
//             Center(
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: placess.map((Popular) {
//                     return Padding(
//                       padding: const EdgeInsets.only(left: 10.0),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             const Color(0xFFE5E3E3),
//                           ),
//                           minimumSize: MaterialStateProperty.all(
//                             const Size(80, 40),
//                           ),
//                           shape: MaterialStateProperty.all(
//                             RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                         child: Text(
//                           Popular.placess,
//                           style: const TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
