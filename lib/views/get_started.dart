import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/login/view.dart';

import '../core/logic/shared_preferences.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});
  goToLogin() {
    CashHelper.setIsNotFirst();
    goTo( LoginView(), canPop: false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(17.w),
        children: [
          SizedBox(height: 70.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(45.r),
                child: AppImage(
                  height: 370.h,
                  width: 170.w,
                  fit: BoxFit.cover,
                  path: 'get_started1.png',
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImage(
                    fit: BoxFit.cover,
                    path: 'get _started2.png',
                    height: 214.h,
                    width: 173.w,
                  ),
                  SizedBox(height: 23.h),
                  AppImage(
                    path: 'get _started3.png',
                    height: 133.h,
                    width: 141.w,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'The ',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,

                ),
              ),
              TextSpan(
                text: 'Suits App ',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              TextSpan(
                text: 'that\n',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Makes Your Look Your Best',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,

                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),



          SizedBox(height: 24.h),
          Text(
            'Everything you need in the world \n of fashion, old and new',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 60.h),
          AppButton(
            text: 'Get started',
            onPressed: () {
              goToLogin();
            },
            width: 325.w,
          ),
        ],
      ),
    );
  }
}
