
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/on_boarding.dart';

import '../core/logic/shared_preferences.dart';
import 'auth/login/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();


    goTo(CashHelper.getIsNotFirst? OnBoardingView():LoginView(), delayDuration: 3);

    // لية الانتقال سريع من الاسبلاش الى الاون بوردنج مفيش انيميشن للانتقال للصفحة الاخري

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: Color(0xffDD8560),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImage(path: 'logo.svg'),
              SizedBox(width: 10.w),
              Text(
                'suits',
                style: TextStyle(
                  fontFamily: 'Waterfall',
                  fontSize: 128.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
