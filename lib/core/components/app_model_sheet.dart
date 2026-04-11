import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_button.dart';

class AppModelSheet extends StatelessWidget {
  const AppModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AppButton(
        text: 'Proceed to Checkout',
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              useSafeArea: true,
            context: context,
            builder: (context) {
              return SizedBox(
                height: 350.h,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      SizedBox(height: 15.h),
                      Container(
                        height: 50.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Promo Code',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              AppButton(
                                text: 'Apply',
                                onPressed: () {},
                                width: 100.w,
                                height: 30.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Text(
                            'Sub-Total',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff858585),
                            ),
                          ),
                          Spacer(),
                          Text('\$83.97'),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Text(
                            'Delivery Free',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff858585),
                            ),
                          ),
                          Spacer(),
                          Text('\$83.97'),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Text(
                            'Disscount',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff858585),
                            ),
                          ),
                          Spacer(),
                          Text('\$83.97'),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Divider(
                        height: 20.h,
                        thickness: 2,
                        color: Color(0xff858585),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Text(
                            'Total Cost',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff858585),
                            ),
                          ),
                          Spacer(),
                          Text('\$83.97'),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
