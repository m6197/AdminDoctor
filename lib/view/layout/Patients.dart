import 'dart:ui';

import 'package:course1/view/layout/ProfilePatients.dart';
import 'package:flutter/material.dart';

class Patients extends StatelessWidget {
  const Patients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(1, 205, 170, 70),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: const Center(
                child: Text(
                  'Patients',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "10 Patients",
                    style: const TextStyle(
                      color: Color.fromARGB(250, 1, 91, 76),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              // Align(
              //  alignment: Alignment.centerLeft,
              //  child: new Text("10 Patients")),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsProfile()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                          width: 52,
                          height: 52,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              ' Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250, 1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(100, 1, 91, 76),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              // Align(
              //  alignment: Alignment.centerLeft,
              //  child: new Text("10 Patients")),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsProfile()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                          width: 52,
                          height: 52,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              ' Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250, 1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(100, 1, 91, 76),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              // Align(
              //  alignment: Alignment.centerLeft,
              //  child: new Text("10 Patients")),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsProfile()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                          width: 52,
                          height: 52,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              ' Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250, 1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(100, 1, 91, 76),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              // Align(
              //  alignment: Alignment.centerLeft,
              //  child: new Text("10 Patients")),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsProfile()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                          width: 52,
                          height: 52,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              ' Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250, 1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(100, 1, 91, 76),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              // Align(
              //  alignment: Alignment.centerLeft,
              //  child: new Text("10 Patients")),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsProfile()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                          width: 52,
                          height: 52,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              ' Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250, 1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(100, 1, 91, 76),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              // Align(
              //  alignment: Alignment.centerLeft,
              //  child: new Text("10 Patients")),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsProfile()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                          width: 52,
                          height: 52,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              ' Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250, 1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(100, 1, 91, 76),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              // Align(
              //  alignment: Alignment.centerLeft,
              //  child: new Text("10 Patients")),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsProfile()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                          width: 52,
                          height: 52,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              ' Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250, 1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(100, 1, 91, 76),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}
