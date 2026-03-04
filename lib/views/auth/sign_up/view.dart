import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';
import 'package:suits/core/components/app_login_or_register.dart';
import 'package:suits/core/components/app_validator.dart';
import 'package:suits/core/logic/dio_helper.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/sign_up/cubit.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AppImage(path: 'arrow_lift.png', fit: BoxFit.contain),
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: BlocProvider(
        create: (context) => CubitSignUp(),
        child: Builder(
          builder: (context) {
            final cubit=BlocProvider.of<CubitSignUp>(context);
            return SingleChildScrollView(
              padding: EdgeInsets.all(17.r),

              child: Form(
                key:cubit. formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    AppInput(
                      controller: cubit.name,
                      label: 'Enter your name',

                      prefixIcon: AppImage(
                        path: 'parson.png',
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                    AppInput(
                      controller:cubit. email,
                      prefixIcon: AppImage(
                        path: 'mail.png',
                        color: Theme.of(context).primaryColor,
                        width: 20.w,
                        height: 20.h,
                      ),
                      label: 'Enter your email',
                    ),
                    AppInput(
                      controller: cubit.password,
                      validator: InputValidator.passwordValidator,
                      keyboardType: TextInputType.number,
                      isPassword: true,
                      isKeyboardType: true,
                      prefixIcon: AppImage(
                        path: 'password.png',

                        width: 20.w,
                        height: 20.h,
                      ),
                      label: 'Enter your password',
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Checkbox(onChanged: (value) {}, value: true),

                        SizedBox(width: 9.w),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(text: 'I agree to the '),
                              TextSpan(
                                text: 'Terms of Service \n',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              TextSpan(text: ' and '),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(height: 38.h),
                    Center(
                      child: AppButton(
                        text: 'Sign Up',
                        onPressed: () {
                          if (cubit.formKey.currentState!.validate()) {}
                          cubit.sendData();
                        },
                        width: 330.w,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Center(child: AppLoginOrRegister(isLogin: false)),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
