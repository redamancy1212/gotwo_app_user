import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BankAccount extends StatefulWidget {
  const BankAccount({Key? key}) : super(key: key);

  @override
  State<BankAccount> createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {
  Uint8List? _image;

  void selectImage() async {
    List<int>? imageBytes = await pickImage(ImageSource.gallery);
    if (imageBytes != null) {
      setState(() {
        _image = Uint8List.fromList(imageBytes);
      });
    } else {
      print('No image selected');
    }
  }

  // dropdown
  List<String> _items = ['K Bank', 'Krungthai', 'Krungsri'];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // กำหนดสีของ AppBar เป็นโปร่งใส
        elevation: 0, // ไม่มีเงาใต้ AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // ใช้ไอคอนแบ็กสีดำ
          onPressed: () {
            Navigator.pop(context); // ย้อนกลับไปยังหน้าก่อนหน้านี้
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bank Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF1A1C43),
                    ),
                  ),
                  SizedBox(height: 5),
                  Divider(
                    color: Color(0xFF1A1C43),
                    thickness: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF1A1C43), width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: const Text("Bank Select"),
                              value: selectedItem,
                              items: _items.map((String item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedItem = value;
                                });
                              },
                              icon: const Icon(Icons.arrow_drop_down),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF1A1C43), width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Name shown on bank account',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF1A1C43), width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter account number',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    if (_image != null)
                      Container(
                        width: 200,
                        height: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: MemoryImage(_image!),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(
                              10), // Optional: Adjust the border radius
                        ),
                      ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: selectImage,
                      child: Text('Add ID Card'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF1A1C43)), // background color
                  minimumSize: MaterialStateProperty.all(
                      const Size(90, 40)), // Set minimum size here
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

Future<List<int>?> pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  try {
    XFile? file = await imagePicker.pickImage(source: source);
    if (file != null) {
      return await file.readAsBytes();
    }
  } catch (e) {
    print('Error picking image: $e');
  }
  return null;
}
