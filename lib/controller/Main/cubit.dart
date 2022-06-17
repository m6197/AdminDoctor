import 'package:course1/Model/DoctorModel.dart';
import 'package:course1/Model/UserModel.dart';
import 'package:course1/Shared/network/local/chache_helper.dart';
import 'package:course1/Shared/network/remote/dio_helper.dart';
import 'package:course1/controller/Main/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Shared/network/remote/end_points.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitState());
  static MainCubit GET(context) => BlocProvider.of(context);

  //--------------Variables--------------//
  String? token = CacheHelper.getData(key: "token");
  double? id = CacheHelper.getData(key: "id");
  DateTime date = DateTime.now();
  Doctor? currentDoctor;
  bool loadingUserData = false;
  int currentIndex = 0;
  bool loadingDoctors = false;
  void getDoctor() {
    loadingDoctors = true;
    emit(LoadingDoctorData());
    DioHelper.postData(url: GetDoctors, data: {"doctor_id": id}).then((value) {
      currentDoctor = Doctor.fromJson(value.data['data']);
      loadingDoctors = false;
      emit(SuccessDoctorData());
    }).catchError((onError) {
      print(onError);
      loadingDoctors = false;
      emit(ErrorDoctorData());
    });
  }

  User? getUser(double id) {
    User? user;
    DioHelper.postData(url: UserGet, data: {"id": id}).then((value) {
      user = User.fromJson(value.data['data']);
    });
    return user;
  }
}
