import 'package:course1/Shared/bloc_observer.dart';
import 'package:course1/Shared/network/local/chache_helper.dart';
import 'package:course1/controller/Auth/cubit.dart';
import 'package:course1/controller/Main/cubit.dart';
import 'package:course1/controller/Main/states.dart';
import 'package:course1/view/layout/navscrren.dart';
import 'package:course1/view/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Shared/network/remote/dio_helper.dart';

void main() {
  BlocOverrides.runZoned(
    () async {
      await WidgetsFlutterBinding.ensureInitialized();
      await DioHelper.init();
      await CacheHelper.init();
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AuthCubit()),
            BlocProvider(create: (context) => MainCubit()..getDoctor())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Nabdat Doctor',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: BlocConsumer<MainCubit, MainStates>(
                builder: (context, state) {
                  return MainCubit.GET(context).token == null
                      ? loginScreen()
                      : navscreen();
                },
                listener: (context, state) {}),
          ),
        );
      },
    );
  }
}
