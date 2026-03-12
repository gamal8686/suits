import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_back.dart';
import 'package:suits/core/components/app_image.dart';



class MyWishListPage extends StatefulWidget {
  const MyWishListPage({super.key});

  @override
  State<MyWishListPage> createState() => _MyWishListPageState();
}

class _MyWishListPageState extends State<MyWishListPage> {
  int selectedIndex1 = 0;
  int selectedIndex2 = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 40.h),
                  AppBack(),
                  Spacer(),
                  Text(
                    'Hello Safia',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 50.h,
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
              SizedBox(height: 30.h),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.all(8.r),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return _Item();
                    //todo
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: 190.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  child: AppImage(
                    height: 140.h,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    path:
                        'https://tse1.mm.bing.net/th/id/OIP.TG9IEryYr99it7mVUknWngHaLH?rs=1&pid=ImgDetMain&o=7&rm=3',
                  ),
                ),
                Positioned(
                  right: 13.w,
                  top: 13.h,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFFFFF80).withAlpha(50),
                    radius: 25.r,
                    child: AppImage(height: 30.h, width: 30.w, path: 'heart.png'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'classic blazar',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(width: 17.w),
              AppImage(height: 15.h, width: 15.w, path: 'star.png'),
              SizedBox(width: 5.w),

              Text(
                '4.5',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
          Text(

            '\$83.97 ',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    );
  }
}
class Model {
  final String suits;
  final String test;
  final String image;
  final String category;

  Model({
    required this.suits,
    required this.test,
    required this.image,
    required this.category,
  });
}