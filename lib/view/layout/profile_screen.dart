
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          children: [

            Stack(

                children: [ Container(
                  width:double.infinity,
                  height: 187,
                  decoration:  const BoxDecoration(
                    color:  Color.fromRGBO(1, 205, 170,70),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),

                  child: const Center(
                    child: Text('Doctor Profile',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                  Padding (
                    padding: const EdgeInsets.only(top:130,
                        left: 25,
                        right: 25),
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50,top: 20,),
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
                                      children: [
                                        Image.asset('assets/image/Path 52.png'),
                                        const Text(
                                          '4.5',
                                          style: TextStyle(
                                            color: Color.fromARGB(250,1, 91, 76),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        const Text(
                                          '50 Reviews',
                                          style: TextStyle(
                                            color: Color.fromARGB(250,1, 91, 76),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,
                                vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    color:Color.fromRGBO(1, 205, 170, 170),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:[
                                      const Text('Patients',
                                        style: TextStyle(
                                          color: Color.fromRGBO(1, 91, 76,100),
                                        ),
                                      ),
                                      const Text('100+',
                                        style: TextStyle(
                                          color: Color.fromRGBO(1, 91, 76,100),
                                        ),
                                      )
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    color:Color.fromRGBO(1, 205, 170, 170),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:[
                                      const Text('Experiences',
                                        style: TextStyle(
                                          color: Color.fromRGBO(1, 91, 76,100),
                                        ),
                                      ),
                                      const Text('10y+',
                                        style: TextStyle(
                                          color: Color.fromRGBO(1, 91, 76,100),
                                        ),
                                      )
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    color:Color.fromRGBO(1, 205, 170, 170),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:[
                                      const Text('Rateing',
                                        style: TextStyle(
                                          color: Color.fromRGBO(1, 91, 76,100),
                                        ),
                                      ),
                                      const Text('4.5',
                                        style: TextStyle(
                                          color: Color.fromRGBO(1, 91, 76,100),
                                        ),
                                      )
                                    ],
                                  ),

                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ]
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child:
                Text('Demograohy',
                  style: TextStyle(
                    color: Color.fromRGBO(1, 91, 76,100),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Text('Dr. Ahmed Mohamed is a specialist in dental medicine',
              style: TextStyle(
                color: Color.fromRGBO(1, 91, 76,100),
              ),
            ),
          ]
      ),
    );
  }
}