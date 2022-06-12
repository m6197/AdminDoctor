
import 'package:flutter/material.dart';

class PatientsProfile extends StatefulWidget {
  const PatientsProfile({Key? key}) : super(key: key);

  @override
  State<PatientsProfile> createState() => _PatientsProfileState();
}

class _PatientsProfileState extends State<PatientsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children:
              [
                Container(
                  width:double.infinity,
                  height: 150,
                  decoration:  const BoxDecoration(
                    color:  Color.fromRGBO(1, 205, 170,70),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),


                  child: const Padding(
                    padding: EdgeInsets.only(top: 40,),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('Patient Profile',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                ),
                const Padding(
                  padding: EdgeInsets.only(top: 75,),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/image/Ellipse 18.png',
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            const Text('Name : test',
              style: TextStyle(
                color: Color.fromRGBO(1, 91, 76,70),
              ),
            ),
            const SizedBox(height: 5,),
            const Text('Age : 23',
              style: TextStyle(
                color: Color.fromRGBO(1, 91, 76,70),
              ),
            ),
            const SizedBox(height: 10,),
            const Text('Report',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(1, 91, 76,50),
                fontWeight: FontWeight.bold,
              ),),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(

                maxLines: 30,
                readOnly: true,
                decoration: InputDecoration(
                  fillColor: Colors.white, filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
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