import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/logic/shared_preferences.dart';
import 'package:suits/views/auth/create_new_password/view.dart';
import 'package:suits/views/auth/forgot_password.dart';
import 'package:suits/views/auth/login.dart';
import 'package:suits/views/auth/sign_up.dart';

import 'package:suits/views/get_started.dart';
import 'package:suits/views/home/pages/home_page.dart';
import 'package:suits/views/home/pages/mywishlist%20_page.dart';
import 'package:suits/views/on_boarding.dart';
import 'package:suits/views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Color(0xffDD8560);
    final primarySwatch = MaterialColor(primary.value, {
      50: primary.withValues(alpha: .1),
      100: primary.withValues(alpha: .2),
      200: primary.withValues(alpha: .3),
      300: primary.withValues(alpha: .4),
      400: primary.withValues(alpha: .5),
      500: primary,
      600: primary.withValues(alpha: .6),
      700: primary.withValues(alpha: .7),
      800: primary.withValues(alpha: .8),
      900: primary,
    });
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        navigatorKey: navKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontSize: 14.sp,
              wordSpacing: 0,
              letterSpacing: 2,
            ),
          ),

          fontFamily: 'Inter',
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              fixedSize: Size.fromHeight(56.1.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.r),
              ),
              backgroundColor: Color(0xffDD8560),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Color(0xffE5E7EB),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),

              borderSide: BorderSide(
                color: Color(0xffE5E7EB).withValues(alpha: 0.90),
              ),
            ),
          ),
          appBarTheme: AppBarTheme(color: Color(0xffD9D9D9)),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatch),

          cardColor: Color(0xffB5B5B5),
          scaffoldBackgroundColor: Color(0xffF4F5F7),
        ),
        title: 'Suits',
        home: const MyWishListPage(list: [],),
      ),
    );
  }
}
