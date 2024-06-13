import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/register.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1C43),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.jpg"),
              const SizedBox(
                height: 5,
              ),

              const Text(
                "GOTWO",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromARGB(255, 228, 228, 235),
                ),
              ),
              const Text(
                "Ride sharing service",
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 199, 200, 218),
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 10),

              // พื้นหลัง
              Center(
                child: Container(
                  width: 300,
                  height: 200,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        117, 86, 106, 141), // สีพื้นหลังของ Container
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // button
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(30), // กำหนดรูปร่างของกรอบ
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 141, 142, 155), // สีขอบ
                            width: 2, // ความหนาของเส้น
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                     const Loginpage()), // ให้ NextPage() เป็นหน้าถัดไป
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              const Color(0xFF1A1C43),
                              // สีพื้นหลังของปุ่ม
                            ),
                            minimumSize: WidgetStateProperty.all(
                              const Size(200, 60),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(30), // กำหนดรูปร่างของกรอบ
                          border: Border.all(
                            color: Colors.black, // สีขอบ
                            width: 2, // ความหนาของเส้น
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                     const Register()), // ให้ NextPage() เป็นหน้าถัดไป
                            );},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.transparent, // สีพื้นหลังของปุ่ม
                            ),
                            minimumSize: WidgetStateProperty.all(
                            const Size(200, 60), // กำหนดขนาดของปุ่ม
                            ),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "By gotwo ride sharing service",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
