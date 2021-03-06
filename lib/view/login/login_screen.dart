import 'package:course1/controller/Auth/cubit.dart';
import 'package:course1/controller/Auth/states.dart';
import 'package:course1/view/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color.fromARGB(255, 1, 205, 171)));
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: (context, states) {},
        builder: (context, states) {
          var cubit = AuthCubit.GET(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Form(
                key: cubit.formkey_Login,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/image/upper shape.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 130.h,
                          left: 30.w,
                        ),
                        child: Text(
                          'Welcome Back,',
                          style: TextStyle(
                            fontSize: 32.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 170.h,
                          left: 30.w,
                        ),
                        child: Text(
                          'Log In!',
                          style: TextStyle(
                            fontSize: 47.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: defaultformfiled(
                          controller: cubit.emailcontrol_Login,
                          label: 'Doctor ID',
                          prefix: Icons.email,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your Doctor ID';
                            }
                            return null;
                          }),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: defaultformfiled(
                        controller: cubit.passcontrol_Login,
                        type: TextInputType.emailAddress,
                        isPassword: cubit.ispassword_Login,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your Password ';
                          }
                          return null;
                        },
                        label: 'Password',
                        prefix: Icons.lock,
                        suffix: cubit.ispassword_Login
                            ? Icons.visibility
                            : Icons.visibility_off,
                        suffixpressed: () {
                          cubit.LoginPassShowChange();
                        },
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.w),
                          child: defaultButton(
                              width: 160.w,
                              isLoading: cubit.isLogging,
                              text: 'Log in',
                              function: () {
                                if (cubit.formkey_Login.currentState!
                                    .validate()) {
                                  cubit.Login(context);
                                }
                                ;
                              }),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/image/down shape.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
