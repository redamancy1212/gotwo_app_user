// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'bank.dart'; // Make sure the bank.dart file is correctly imported

// class Register extends StatefulWidget {
//   const Register({Key? key}) : super(key: key);

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   Uint8List? _image;
//   List<String> _items = ['Female', 'Male'];
//   String? selectedItem;

//   void selectImage() async {
//     List<int>? imageBytes = await pickImage(ImageSource.gallery);
//     if (imageBytes != null) {
//       setState(() {
//         _image = Uint8List.fromList(imageBytes);
//       });
//     } else {
//       print('No image selected');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent, // กำหนดสีของ AppBar เป็นโปร่งใส
//         elevation: 0, // ไม่มีเงาใต้ AppBar
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black), // ใช้ไอคอนแบ็กสีดำ
//           onPressed: () {
//             Navigator.pop(context); // ย้อนกลับไปยังหน้าก่อนหน้านี้
//           },
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//             child: Text(
//               "Register",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 27,
//                 color: Color(0xFF1A1C43),
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 10),
//                   if (_image != null)
//                     CircleAvatar(
//                       radius: 50,
//                       backgroundImage: MemoryImage(_image!),
//                     ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: selectImage,
//                     child: Text('Select Image'),
//                   ),
//                   const SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: Container(
//                       height: 40,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFF1A1C43), width: 1),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                         child: TextField(
//                           textAlign: TextAlign.left, // จัดตำแหน่งข้อความชิดซ้าย
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Name',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: Container(
//                       height: 40,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFF1A1C43), width: 1),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//                         child: TextField(
//                           textAlign: TextAlign.left, // จัดตำแหน่งข้อความชิดซ้าย
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Email',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: Container(
//                       height: 40,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFF1A1C43), width: 1),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//                         child: TextField(
//                           textAlign: TextAlign.left, // จัดตำแหน่งข้อความชิดซ้าย
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Phone number',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: Container(
//                       height: 40,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFF1A1C43), width: 1),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton<String>(
//                             isExpanded: true,
//                             hint: const Text("Gender"),
//                             value: selectedItem,
//                             items: _items.map((String item) {
//                               return DropdownMenuItem(
//                                 value: item,
//                                 child: Center(child: Text(item)),
//                               );
//                             }).toList(),
//                             onChanged: (String? value) {
//                               setState(() {
//                                 selectedItem = value;
//                               });
//                             },
//                             icon: const Icon(Icons.arrow_drop_down),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: Container(
//                       height: 40,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFF1A1C43), width: 1),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//                         child: TextField(
//                           textAlign: TextAlign.left, // จัดตำแหน่งข้อความชิดซ้าย
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Create Password',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: Container(
//                       height: 40,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFF1A1C43), width: 1),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//                         child: TextField(
//                           textAlign: TextAlign.left, // จัดตำแหน่งข้อความชิดซ้าย
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Confirm Password',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const BankAccount(),
//                           ),
//                         );
//                       },
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all<Color>(const Color(0xFF1A1C43)),
//                         minimumSize: MaterialStateProperty.all(const Size(110, 35)),
//                       ),
//                       child: const Text(
//                         'Next',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Future<List<int>?> pickImage(ImageSource source) async {
//   final ImagePicker imagePicker = ImagePicker();
//   try {
//     XFile? file = await imagePicker.pickImage(source: source);
//     if (file != null) {
//       return await file.readAsBytes();
//     }
//   } catch (e) {
//     print('Error picking image: $e');
//   }
//   return null;
// }
