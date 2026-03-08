import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppBack extends StatelessWidget {
  const AppBack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: CircleAvatar(
          backgroundColor: Color(0xff1010100d).withValues(alpha: 0.05),
          radius: 15,
          child: AppImage(

              path: 'arrow_lift.png', height: 25.h, width: 25.w),
        ),
      ),
    );
  }
}
