
import 'dart:ui';

import 'package:course1/layout/Patients.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class homescrren extends StatefulWidget {
  const homescrren({Key? key}) : super(key: key);

  @override
  State<homescrren> createState() => _homescrrenState();
}

class _homescrrenState extends State<homescrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Dr.Ahmed bakr',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Image(
                      image: AssetImage(
                        'assets/image/noun-profile-709597.png',
                      ),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Your Appointment Today',
                          style: TextStyle(

                            fontSize: 17,
                              color: Color.fromARGB(250,1, 91, 76),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Saturday',
                          style: TextStyle(

                            fontSize: 17,
                            color: Color.fromARGB(250,1, 91, 76),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell (
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Patients()),
                  );
                },
                child: Container(
                  height: 115,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250,1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                  color: Color.fromARGB(250,1, 91, 76),


                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: const [

                                Text(
                                  '10:00 AM',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '10 Patients',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 10,left: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Patients()),
                  );
                },
                child: Container(
                  height: 115,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250,1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(250,1, 91, 76),


                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: const [

                                Text(
                                  '11:00 AM',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '10 Patients',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Moneday',
                          style: TextStyle(

                            fontSize: 17,
                            color: Color.fromARGB(250,1, 91, 76),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Patients()),
                  );
                },
                child: Container(
                  height: 115,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250,1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(250,1, 91, 76),


                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: const [

                                Text(
                                  '10:00 AM',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '10 Patients',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 10,left: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Patients()),
                  );
                },
                child: Container(
                  height: 115,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(250,1, 91, 76),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(250,1, 91, 76),


                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: const [

                                Text(
                                  '11:00 AM',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '10 Patients',
                                  style: TextStyle(
                                    color: Color.fromARGB(250,1, 91, 76),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
