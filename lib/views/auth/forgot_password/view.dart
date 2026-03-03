import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';
import 'package:suits/views/auth/forgot_password/cubit.dart';

class ForgotYourPasswordView extends StatelessWidget {
  const ForgotYourPasswordView({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AppImage(
          path: 'arrow_lift.png',
          fit: BoxFit.contain,
          width: 24.w,
          height: 24.h,
        ),

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17.0),

        child: BlocProvider(
          create: (context) => CubitForgotPassword(),
          child: Builder(
            builder: (context) {
              final cubit=BlocProvider.of<CubitForgotPassword>(context);
              return Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Enter your email or your phone number, we will send you confirmation code',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA1A8B0),
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: 31.h),

                  Container(
                    height: 56.h,
                    width: 356.w,
                    decoration: BoxDecoration(
                      color: Color(0xffE5E7EB),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: GestureDetector(
                            onTap: () {
                              // setState(() {
                              //   isSelected = !isSelected;
                              // });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: 160.w,
                              height: 43.h,
                              decoration: BoxDecoration(
                                color: cubit.isSelected
                                    ? Color(0xffE5E7EB)
                                    : Color(0xffF9FAFB),

                                borderRadius: BorderRadius.all(Radius.circular(24.r)),
                              ),
                              child: Center(
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: cubit.isSelected
                                        ? Color(0xffA1A8B0)
                                        : Color(0xffDD8560),
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: GestureDetector(
                            onTap: () {
                              // setState(() {
                              //   isSelected = !isSelected;
                              // });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: 160.w,
                              height: 43.h,
                              decoration: BoxDecoration(
                                color: cubit.isSelected
                                    ? Color(0xffF9FAFB)
                                    : Color(0xffE5E7EB),

                                borderRadius: BorderRadius.all(Radius.circular(24.r)),
                              ),
                              child: Center(
                                child: Text(
                                  'Phone',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: cubit.isSelected
                                        ? Color(0xffDD8560)
                                        : Color(0xffA1A8B0),
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  AppInput(
                    prefixIcon: AppImage(
                      path: cubit.isSelected ? 'phone.png' : 'emel_p.png',
                      width: 24.w,
                      height: 24.h,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: cubit.isSelected ? '01065953330' : 'safiaayman@gmail.com',
                    isCheek: true,
                  ),
                  SizedBox(height: 32.h),
                  AppButton(text: 'Reset Password', onPressed: () {}, width: 356.w),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
