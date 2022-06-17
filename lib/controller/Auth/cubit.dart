import 'package:course1/Shared/network/local/chache_helper.dart';
import 'package:course1/Shared/network/remote/dio_helper.dart';
import 'package:course1/controller/Auth/states.dart';
import 'package:course1/view/layout/navscrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Shared/network/remote/end_points.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitState());
  static AuthCubit GET(context) => BlocProvider.of(context);

  //--------------------Variables-----------------//
  var emailcontrol_Login = TextEditingController();
  var passcontrol_Login = TextEditingController();
  var formkey_Login = GlobalKey<FormState>();
  bool ispassword_Login = true;
  bool isLogging = false;

  //--------------------Methods-----------------//

  void LoginPassShowChange() {
    ispassword_Login = !ispassword_Login;
    emit(PassShowChangeLogin());
  }

  void Login(var context) {
    isLogging = true;
    emit(LoginLoadingState());
    DioHelper.postData(url: LoginEndPoint, data: {
      "id": emailcontrol_Login.text,
      "password": passcontrol_Login.text
    }).then((value) {
      print(value.data);
      double id = value.data['data']['id'];
      CacheHelper.saveData(key: "token", value: value.data['data']['token'])
          .then((value) {
        CacheHelper.saveData(key: "id", value: id).then((value) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navscreen()));
        });
      });
      isLogging = false;
      emit(LoginSuccesState());

      emailcontrol_Login.text = "";
      passcontrol_Login.text = "";
    }).catchError((e) {
      print(e.response.data['message']);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(e.response.data['message'])
            ],
          )));
      isLogging = false;
      emit(LoginErrorState());
    });
  }
}
