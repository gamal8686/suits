import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/views/home/pages/add_to_car.dart';
import 'package:suits/views/home/pages/home_page.dart';

import 'pages/Profile.dart';
import 'pages/add_to_car.dart';

import 'pages/my_wishlist.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final List<ListPage> list = [
    ListPage(page: HomePage(), image: 'home.png'),
    ListPage(page: AddToCarPage(), image: 'car.png'),
    ListPage(page: MyWishListPage(), image: 'heart_black.png'),
    ListPage(page: ProfileView(), image: 'parson.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        elevation: 0,

        items: List.generate(
          list.length,
          (index) => BottomNavigationBarItem(
            label: '',
            icon: AppImage(
              color: currentIndex == index
                  ? Color(0xffDD8560)
                  : Colors.grey,

              path: list[index].image,
              height: 20.h,
              width: 20.w,
            ),
          ),
        ),
      ),
    );
  }
}

class ListPage {
  final Widget page;
  final String image;

  ListPage({required this.page, required this.image});
}
