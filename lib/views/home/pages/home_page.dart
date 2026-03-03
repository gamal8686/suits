import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_bell.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';

import 'mywishlist _page.dart';



class HomeView extends StatefulWidget {
  const HomeView({super.key, });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex1 = 0;
  int selectedIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    final list = [
      Model(
        suits: 'newest1.png',
        test: 'Blazer',
        image: 'suit.png',
        category: 'All',
      ),
      Model(
        suits: 'newest3.png',
        test: 'Shirt',
        image: 'shirt.png',
        category: 'Newest',
      ),
      Model(
        suits: 'newest1.png',
        test: 'Men Shoes',
        image: 'shoes.png',
        category: 'Popular',
      ),
      Model(
        suits: 'newest4.png',
        test: 'Women Shoes',
        image: 'women_shoes.png',
        category: 'Men',
      ),
      Model(
        suits: 'newest1.png',
        test: 'Blazer',
        image: 'suit.png',
        category: 'All',
      ),
      Model(
        suits: 'newest3.png',
        test: 'Shirt',
        image: 'shirt.png',
        category: 'Newest',
      ),
      Model(
        suits: 'newest2.png',
        test: 'Men Shoes',
        image: 'shoes.png',
        category: 'Popular',
      ),
      Model(
        suits: 'newest4.png',
        test: 'Women Shoes',
        image: 'women_shoes.png',
        category: 'Men',
      ),
    ];
    return Scaffold(
      body: ListView(
        children:[ Column(
          children: [
            SizedBox(height: 40.h),
            Row(
              children: [
                Text(
                  'Hello Safia',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
                Spacer(),
                AppBall(),
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              color: Color(0xffFFFFFF),
              height: 173.h,
              width: 340.w,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New Collection',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Disscount 50% for \n the first transaction',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                        SizedBox(height: 18.h),

                        AppButton(
                          height: 35.h,
                          width: 150.w,
                          text: 'Shop Now',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(width: 40.w),
                    AppImage(
                      height: 100.h,
                      width: 100.w,
                      path: 'clothes.png',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28.h),
            Row(
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xff4E6542),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            SizedBox(height: 18.h),
            SizedBox(
              height: 120.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex1 == index;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex1 = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Theme.of(context).primaryColor
                                  : Color(0xffFFFFFF),
                              border: BoxBorder.all(color: Color(0xffDD8560)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 70.h,
                            width: 70.w,
                            child: Center(
                              child: AppImage(
                                height: 25.h,
                                color: Theme.of(context).primaryColor,
                                path: list[index].image,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          list[index].test,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: list.length,
              ),
            ),
            SizedBox(height: 5.h),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Flash Sale',

                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 60.h,
              child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final isSelected = selectedIndex2 == index;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex2 = index;
                              goTo(MyWishListPage(list:list ,));
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Theme.of(context).primaryColor
                                  : Color(0xffFFFFFF),
                              border: BoxBorder.all(color: Color(0xffDD8560)),
                              borderRadius: BorderRadius.circular(50),
                            ),

                            width: 100.w,
                            child: Center(
                              child: Text(
                                list[index].category,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: list.length,


              ),
            ),
            SizedBox(height: 15.h),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AppImage(
                    height: 150.h,
                    width: 150.w,
                    path: list[index].suits,
                    fit: BoxFit.cover,
                  ),
                );
              },

              itemCount: list.length,
            ),
          ],
        ),]
      ),
    );
  }
}

class Model {
  final String test, image, category, suits;

  Model({
    required this.suits,
    required this.category,
    required this.test,
    required this.image,
  });
}
