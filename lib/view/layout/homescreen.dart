import 'dart:ui';

import 'package:course1/Model/DoctorModel.dart';
import 'package:course1/controller/Main/cubit.dart';
import 'package:course1/controller/Main/states.dart';
import 'package:course1/view/layout/Patients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Model/UserModel.dart';

class homescrren extends StatefulWidget {
  homescrren({Key? key}) : super(key: key);

  @override
  State<homescrren> createState() => _homescrrenState();
}

class _homescrrenState extends State<homescrren> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.GET(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Dr. ' + cubit.currentDoctor!.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(cubit.currentDoctor!.photo),
                            radius: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Your Appointment Today',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(250, 1, 91, 76),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: cubit.currentDoctor!.reservations.length,
                        itemBuilder: (context, index) {
                          if (cubit.currentDoctor!.reservations[index]
                                  .reservation_date ==
                              cubit.date.toString().split(" ")[0]) {
                            return appointment(
                                cubit.currentDoctor!.reservations[index]);
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget appointment(Reservation reservation) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Patients()),
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
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/image/Rectangle 52.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reserved by ' + reservation.reserved_by.toString(),
                      style: TextStyle(
                        color: Color.fromARGB(250, 1, 91, 76),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          reservation.reservation_date +
                              " " +
                              reservation.reservation_time,
                          style: TextStyle(
                            color: Color.fromARGB(250, 1, 91, 76),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 50,
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
    );
  }
}
