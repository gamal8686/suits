import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_button.dart';
import '../../../core/components/app_image.dart';

class SuccessDialog extends StatelessWidget {
  final bool isFromCreateAccount;

  const SuccessDialog({super.key, this.isFromCreateAccount = false});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      children: [
        Container(
          width: 327.w,
          height: 400.h,
          margin: EdgeInsetsDirectional.all(15.r),
          child: Column(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: AppImage(path: 'check.png', height: 200.h, width: 200.w),
              ),

              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Text(
                  isFromCreateAccount ? 'Yeay! Welcome Back' : 'Success',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                isFromCreateAccount
                    ? 'Once again you login successfully\ninto medidoc app'
                    : 'Your account has been successfully \nregistered',
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),

              AppButton(
                onPressed: () {},
                text: isFromCreateAccount? 'Go to home':'Sign In',
                width: 270.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
