import 'package:flutter/material.dart';

class Join extends StatefulWidget {
  const Join({Key? key}) : super(key: key);

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  List<String> _items = ['Female', 'Male'];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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

              //////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color.fromARGB(
                                255, 204, 204, 204)),
                        minimumSize: MaterialStateProperty.all(
                            const Size(90, 30)),
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
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color.fromARGB(
                                255, 204, 204, 204)),
                        minimumSize: MaterialStateProperty.all(
                            const Size(90, 30)),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF1A1C43)),
                  minimumSize: MaterialStateProperty.all(const Size(90, 30)),
                ),
                child: const Text(
                  'search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              
              //////////////////////////////////
              // Aligned dropdown box to the right-hand side
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 100, // Adjust width as needed
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF1A1C43)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: const Text(
                            "Gender",
                            style: TextStyle(fontSize: 12), // Adjust text size
                          ),
                          value: selectedItem,
                          items: _items.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 12), // Adjust text size
                              ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
