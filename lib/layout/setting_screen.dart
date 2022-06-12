import 'package:course1/shared/components/components.dart';
import 'package:flutter/material.dart';
import '../login/login_screen.dart';
import 'Personal Data.dart';


class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
              'Settings',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),

        InkWell(
          onTap: () {},
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Image.asset('assets/image/noun-language-1.png'),
                      const SizedBox(width: 15,),
                      const Text('Languages'),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(1, 205, 170,90),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Image.asset('assets/image/noun-faq-135560.png'),
                      const SizedBox(width: 15,),
                      const Text('FAQs'),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(1, 205, 170,90),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Image.asset('assets/image/noun-community-.png'),
                      const SizedBox(width: 15,),
                      const Text('Community'),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(1, 205, 170,90),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      Expanded(
          child:
      Align(
          alignment: Alignment.bottomCenter,
          child:
        defaultButton(
            width: 240,
            text: 'Log out',
            function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const loginScreen()),
                );
              }
        ),
      ),
        ),
        const SizedBox(height: 20,),
      ]
      ),
    );
  }
}
