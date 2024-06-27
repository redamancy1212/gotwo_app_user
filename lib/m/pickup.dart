
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class Pickup extends StatefulWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  State<Pickup> createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
 String? selectedItem;
  String? newValue;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
          const  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Join',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Color(0xFF1A1C43),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFF1A1C43),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 116, 119, 118),
                      size: 24,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 110),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SearchField(
                          hint: 'Pickup',
                          searchInputDecoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          itemHeight: 35,
                          maxSuggestionsInViewPort: 8,
                          suggestionsDecoration: SuggestionDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0x9FC8DFF0),
                          ),
                          onSubmit: (String value) {
                            setState(() {
                            });
                          },
                          
                          suggestions: [
                            'F1',
                            'Central',
                            'Airport',
                            'Station',
                            'Mall',
                            'Park',
                            'University',
                            'Downtown',
                            'Hotel',
                            'Restaurant',
                          ].map((e) => SearchFieldListItem<String>(e)).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Image.asset(
                      'assets/images/motorcycle.png',
                      height: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 110),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SearchField(
                          hint: 'Drop',
                          searchInputDecoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          itemHeight: 35,
                          maxSuggestionsInViewPort: 8,
                          suggestionsDecoration: SuggestionDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0x9FC8DFF0),
                          ),
                          onSubmit: (String value) {
                            setState(() {
                            });
                          },
                          suggestions: [
                            'F1',
                            'Central',
                            'Airport',
                            'Station',
                            'Mall',
                            'Park',
                            'University',
                            'Downtown',
                            'Hotel',
                            'Restaurant',
                          ].map((e) => SearchFieldListItem<String>(e)).toList(),
                        ),
                      ),
                    ),
               
                  ],
                ),
              ),
            ),     Column(
              children: [
                ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF1A1C43),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(const Size(90, 30)),
                          ),
                          child: const Text(
                            'search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
              ],
            ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        color: Color(0xFF1A1C43),
                        thickness: 1,
                      ),
                    ),
            SizedBox(height: 20),
          ],
        ),
      ),     ///////////////////////////-Tab-/////////////////////////////////////////////
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Color(0xFF1A1C43),
          ),
          child: NavigationBar(
            height: 60,
            backgroundColor: Colors
                .transparent, // ตั้งค่าสีพื้นหลังของ NavigationBar เป็นโปร่งใส
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Dashboard',
              ),
              NavigationDestination(
                icon: Icon(Icons.checklist_outlined),
                label: 'Status',
              ),
              NavigationDestination(
                icon: Icon(Icons.report_outlined),
                label: 'Report',
              ),
              NavigationDestination(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}

