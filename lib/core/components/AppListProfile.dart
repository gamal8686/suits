import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';

class AppListProfile extends StatelessWidget {
  final String image;
  final String text;
  final void Function()? onTap;

  const AppListProfile({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 55.h,
          width: 322.w,
          decoration: BoxDecoration(color: Color(0xffFFFFFF)),
          child: Row(
            children: [
              SizedBox(width: 19.w),
              AppImage(path: image, width: 20.w, height: 20.h),
              SizedBox(width: 19.w),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  fontFamily: 'Montserrat',
                  color: Color(0xff000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
