import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_back.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';

class AddToCarPage extends StatefulWidget {
  const AddToCarPage({super.key});

  @override
  State<AddToCarPage> createState() => _AddToCarViewState();
}

class _AddToCarViewState extends State<AddToCarPage> {
  int account = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(height: 50.h),

              AppImage(width: double.infinity, path: 'on_boarding1.png'),

              Positioned(top: 20, left: 20, child: AppBack()),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF4F5F7),
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r),
                    ),
                  ),
                  height: 550.h,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Text(
                            'Female Style',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          AppImage(height: 15.h, width: 15.w, path: 'star.png'),
                          Text('5.4'),
                        ],
                      ),
                      SizedBox(height: 13.h),
                      Text(
                        'Classic Blazer',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 13.h),
                      Text(
                        'Product Details',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 13.h),
                      Text(
                        maxLines: 1,
                        'cotton sweat shirt with a text point',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 13.h),
                      Row(
                        children: [
                          Text(
                            'Quality',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 30.w),
                          Container(
                            height: 30.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(10.r),
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      account--;
                                    });
                                  },
                                ),
                                Text('$account'),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      account++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Divider(color: Color(0xffB5B5B5)),
                      SizedBox(height: 25.h),
                      Row(
                        children: [
                          Text(
                            'Color:',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10.h),
                          ...List.generate(4, (index) {
                            final colors = [
                              Colors.red,
                              Colors.green,
                              Colors.blue,
                              Colors.yellow,
                            ];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: colors[index],
                              ),
                            );
                          }),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Size:',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10.h),

                          ...List.generate(4, (index) {
                            final text = ['s', 'm', 'l', 'xl'];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(
                                      0xD9D9D980,
                                    ).withAlpha(50),
                                  ),
                                  Text(
                                    text[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ],
                      ),
                      Container(
                        height: 70.h,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppImage(
                              path: 'hart_your_car.png',
                              height: 40.h,
                              width: 40.w,
                            ),
                            SizedBox(width: 30.h),
                            AppButton(
                              width: 230.w,
                              onPressed: () {},
                              height: 40.h,
                              text: 'Add To Cart',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
