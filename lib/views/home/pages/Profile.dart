import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';

import '../../../core/components/AppListProfile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(

          children: [
            SizedBox(height: 20.h),
            Text(
              textAlign: TextAlign.center,
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
                fontFamily: 'Montserrat',
                color: Color(0xff000000),
              ),
            ),
            SizedBox(height: 40.h),
            Center(
              child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: AppImage(
                  path:
                      'https://tse1.mm.bing.net/th/id/OIP.xcKD3w58xiM1l9211ExZMwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
                  height: 100.h,
                  width: 100.w,
                ),
              ),
            ),
            SizedBox(height: 20.h),

            Text(
              textAlign: TextAlign.center,
              'Safia Ayman',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
                fontFamily: 'Montserrat',
                color: Color(0xff000000),
              ),
            ),
            AppListProfile(image: 'user.png',text: 'Your Profile',),
            AppListProfile(image: 'menu.png',text: 'My Order',),
            AppListProfile(image: 'credit_card.png',text: 'Payment Methods',),
            AppListProfile(image: 'heart_off.png',text: 'Wishlist',),
            AppListProfile(image: 'setting.png',text: 'Setting',),
            AppListProfile(image: 'logout.png',text: 'Log Out',),
          ],
        ),
      ),
    );
  }
}
