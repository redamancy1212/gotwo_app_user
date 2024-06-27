// import 'package:flutter/material.dart';

// class Pgiol extends StatefulWidget {
//   const Pgiol({Key? key}) : super(key: key);

//   @override
//   State<Pgiol> createState() => _PgiolState();
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
//   Place('F1'),
//   Place('Bus'),
//   Place('Place 3'),
// ];

// final List<Popular> placess = [
//   Popular('F1'),
//   Popular('F2'),
//   Popular('F3'),
//   Popular('F4'),
//   Popular('F5'),
//   Popular('F6'),
// ];

// class _PgiolState extends State<Pgiol> {
//   int index = 0;
//   String selectedPopular = '';
//   String selectedPlace = '';

//   TextEditingController pickupController = TextEditingController();
//   TextEditingController dropController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Pickup',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 27,
//                       color: Color(0xFF1A1C43),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     width: 320,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       border: Border.all(
//                         color: const Color(0xFF1A1C43),
//                         width: 1,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(bottom: 0.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.search,
//                             color: Color(0xFF4D4D4F),
//                             size: 24,
//                           ),
//                           const SizedBox(
//                             width: 20,
//                           ),
//                           SizedBox(
//                             width: 80,
//                             child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 TextField(
//                                   controller: pickupController,
//                                   decoration: const InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: 'Pickup',
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       pickupController.clear();
//                                       selectedPlace = '';
//                                     });
//                                   },
//                                   child: const Icon(
//                                     Icons.clear,
//                                     color: Colors.grey,
//                                     size: 15,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(width: 10),
//                           Image.asset(
//                             'assets/images/motorcycle.png',
//                             height: 20,
//                           ),
//                           const SizedBox(width: 25),
//                           SizedBox(
//                             width: 80,
//                             child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 TextField(
//                                   controller: dropController,
//                                   decoration: const InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: 'Drop',
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       dropController.clear();
//                                       selectedPopular = '';
//                                     });
//                                   },
//                                   child: const Icon(
//                                     Icons.clear,
//                                     color: Colors.grey,
//                                     size: 15,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       String pickupText = pickupController.text.trim();
//                       String dropText = dropController.text.trim();
//                       if (selectedPlace.isNotEmpty || selectedPopular.isNotEmpty) {
//                         print('Searching for ${selectedPlace.isNotEmpty ? selectedPlace : selectedPopular} from $pickupText to $dropText');
//                       } else {
//                         print('Please select a place to search.');
//                       }
//                     },
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                         const Color(0xFF1A1C43),
//                       ),
//                       minimumSize: MaterialStateProperty.all(const Size(90, 30)),
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
//                     const Text(
//                       'Latest searches',
//                       style: TextStyle(
//                         color: Color(0xFF1A1C43),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Center(
//                       child: Column(
//                         children: List.generate((places.length / 3).ceil(), (index) {
//                           return Padding(
//                             padding: const EdgeInsets.only(bottom: 10.0),
//                             child: Wrap(
//                               alignment: WrapAlignment.center,
//                               spacing: 20.0,
//                               children: places
//                                   .skip(index * 3)
//                                   .take(3)
//                                   .map((Place place) {
//                                 return ElevatedButton(
//                                   onPressed: () {
//                                     setState(() {
//                                       if (selectedPlace == place.name) {
//                                         selectedPlace = '';
//                                         dropController.clear(); // Clear drop controller if already selected
//                                       } else {
//                                         selectedPlace = place.name;
//                                         selectedPopular = '';
//                                         pickupController.text = place.name;
//                                         dropController.text = place.name; // Update drop field
//                                       }
//                                     });
//                                   },
//                                   style: ButtonStyle(
//                                     backgroundColor: MaterialStateProperty.all<Color>(
//                                       selectedPlace == place.name ? Colors.blue : const Color(0xFFE5E3E3),
//                                     ),
//                                     minimumSize: MaterialStateProperty.all(const Size(60, 30)),
//                                     shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(5),
//                                       ),
//                                     ),
//                                   ),
//                                   child: Text(
//                                     place.name,
//                                     style: const TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xFF1A1C43),
//                                     ),
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           );
//                         }),
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
//                 padding: EdgeInsets.only(left: 30.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Popular',
//                       style: TextStyle(
//                         color: Color(0xFF1A1C43),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                   ],
//                 ),
//               ),
//             ),
//             Center(
//               child: Column(
//                 children: List.generate((placess.length / 3).ceil(), (index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 10.0),
//                     child: Wrap(
//                       alignment: WrapAlignment.center,
//                       spacing: 20.0,
//                       children: placess
//                           .skip(index * 3)
//                           .take(3)
//                           .map((Popular popular) {
//                         return ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               if (selectedPopular == popular.placess) {
//                                 selectedPopular = '';
//                                 dropController.clear(); // Clear drop controller if already selected
//                               } else {
//                                 selectedPopular = popular.placess;
//                                 selectedPlace = '';
//                                 pickupController.text = popular.placess;
//                                 dropController.text = popular.placess; // Update drop field
//                               }
//                             });
//                           },
//                           style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all<Color>(
//                               selectedPopular == popular.placess ? Colors.blue : const Color(0xFFE5E3E3),
//                             ),
//                             minimumSize: MaterialStateProperty.all(const Size(60, 30)),
//                             shape: MaterialStateProperty.all(
//                               RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                             ),
//                           ),
//                           child: Text(
//                             popular.placess,
//                             style: const TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFF1A1C43),
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//           indicatorColor: Colors.blue.shade100,
//           labelTextStyle: MaterialStateProperty.all(
//             const TextStyle(
//               fontSize: 10,
//               fontWeight: FontWeight.w500,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         child: Container(
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20.0),
//               topRight: Radius.circular(20.0),
//             ),
//             color: Color(0xFF1A1C43),
//           ),
//           child: NavigationBar(
//             height: 60,
//             backgroundColor: Colors.transparent,
//             labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//             selectedIndex: index,
//             onDestinationSelected: (index) => setState(() => this.index = index),
//             destinations: const [
//               NavigationDestination(
//                 icon: Icon(Icons.home_outlined),
//                 label: 'Dashboard',
//               ),
//               NavigationDestination(
//                 icon: Icon(Icons.checklist_outlined),
//                 label: 'Status',
//               ),
//               NavigationDestination(
//                 icon: Icon(Icons.report_outlined),
//                 label: 'Report',
//               ),
//               NavigationDestination(
//                 icon: Icon(Icons.account_circle_outlined),
//                 label: 'Profile',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
