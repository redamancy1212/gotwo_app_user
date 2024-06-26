import 'package:flutter/material.dart';

class Join extends StatefulWidget {
  const Join({Key? key}) : super(key: key);

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  List<String> _items = ['Female', 'Male'];
  String? selectedItem;
  String? newValue;

  int index = 0;

  List<Map<String, String>> listData = [
    {
      'from': 'home',
      'to': 'F1',
      'date': '24/03/24',
      'time': '10:30',
      'gender': 'Male',
      'price': '50 THB',
      'image': 'assets/images/profile.png',
    },
    {
      'from': 'School',
      'to': 'F2',
      'date': '25/03/24',
      'time': '11:30',
      'gender': 'Male',
      'price': '35 THB',
      'image': 'assets/images/profile.png',
    },
    {
      'from': 'JJ',
      'to': 'F3',
      'date': '25/03/24',
      'time': '18:30',
      'gender': 'Male',
      'price': '40 THB',
      'image': 'assets/images/profile.png',
    },
    {
      'from': 'Workplace',
      'to': 'F4',
      'date': '26/03/24',
      'time': '12:30',
      'gender': 'Female',
      'price': '45 THB',
      'image': 'assets/images/profile.png',
    },
    {
      'from': 'Gym',
      'to': 'F5',
      'date': '26/03/24',
      'time': '13:30',
      'gender': 'Female',
      'price': '55 THB',
      'image': 'assets/images/profile.png',
    },
    {
      'from': 'Park',
      'to': 'F6',
      'date': '27/03/24',
      'time': '14:30',
      'gender': 'Female',
      'price': '60 THB',
      'image': 'assets/images/profile.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Join',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Color(0xFF1A1C43),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFCCCCCC),
                            ),
                            minimumSize: MaterialStateProperty.all(
                              const Size(90, 30),
                            ),
                          ),
                          child: const Text(
                            'Pickup',
                            style: TextStyle(
                              color: Color(0xFF1A1C43),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),
                        Image.asset(
                          'assets/images/motorcycle.png',
                          height: 20,
                        ),
                        const SizedBox(width: 25),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFCCCCCC),
                            ),
                            minimumSize: MaterialStateProperty.all(
                              const Size(90, 30),
                            ),
                          ),
                          child: const Text(
                            'Drop',
                            style: TextStyle(
                              color: Color(0xFF1A1C43),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Color(0xFF1A1C43),
                      thickness: 1,
                    ),
                  ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 80,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF1A1C43)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: const Text(
                                "Gender",
                                style: TextStyle(fontSize: 11),
                              ),
                              value: newValue,
                              items: _items.map((String item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(fontSize: 11),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  newValue = value;
                                });
                              },
                              icon: const Icon(Icons.arrow_drop_down, size: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
//////////////////////////////-List-///////////////////////////////////////////////////
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                children: listData.map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press for each item
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF1A1C43),
                        elevation: 2,
                        minimumSize: const Size(300, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFF1A1C43),
                            width: 2,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    item['image'] ??
                                        'assets/images/profile.png',
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'From: ',
                                            style: TextStyle(
                                              fontSize: 11.5,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              '${item['from']}',
                                              style: const TextStyle(
                                                fontSize: 11.5,
                                              ),
                                            ),
                                          ),
                                          const Icon(Icons.arrow_forward),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Text(
                                            'To: ',
                                            style: TextStyle(
                                              fontSize: 11.5,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              '${item['to']}',
                                              style: const TextStyle(
                                                fontSize: 11.5,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Date: ${item['date']}',
                                        style: const TextStyle(fontSize: 11.5),
                                      ),
                                      Text(
                                        'Time: ${item['time']}',
                                        style: const TextStyle(fontSize: 11.5),
                                      ),
                                      Text(
                                        'Gender: ${item['gender']}',
                                        style: const TextStyle(fontSize: 11.5),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Text(
                                ' ${item['price']}',
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),

      ///////////////////////////-Tab-/////////////////////////////////////////////
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
