import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';

import '../core/components/app_back.dart';
import '../core/components/app_model_sheet.dart';

class MyCardsView extends StatefulWidget {
  const MyCardsView({super.key});

  @override
  State<MyCardsView> createState() => _MyCardsViewState();
}

class _MyCardsViewState extends State<MyCardsView> {
  int selectedIndex = 0;
  List<Model> list = [
    Model(
      name: 'Classic Blazar',
      size: 'Size:xl',
      price: 83.97,
      imagePath: 'on_boarding1.png',
    ),
    Model(
      name: 'Classic Blazar',
      size: 'Size:xl',
      price: 83.97,
      imagePath: 'on_boarding2.png',
    ),
    Model(
      name: 'Classic Blazar',
      size: 'Size:xl',
      price: 83.97,
      imagePath: 'on_boarding3.png',
    ),
    Model(
      name: 'Classic Blazar',
      size: 'Size:xl',
      price: 83.97,
      imagePath: 'on_boarding2.png',
    ),
    Model(
      name: 'Classic Blazar',
      size: 'Size:xl',
      price: 83.97,
      imagePath: 'on_boarding1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppModelSheet(),

      //todo i stop in here
      appBar: AppBar(
        title: Text('My cards'),
        centerTitle: true,
        leading: AppBack(),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Dismissible(
              key: Key(list[index].imagePath + list[index].name),
              direction: DismissDirection.endToStart,
              background: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20.w),
                color: Colors.red,
                child: const Icon(Icons.delete, color: Colors.white, size: 30),
              ),
              confirmDismiss: (direction) async {
                return await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Delete Item"),
                      content: const Text(
                        "Are you sure you want to delete this item?",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, false),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, true),
                          child: const Text("Delete"),
                        ),
                      ],
                    );
                  },
                );
              },
              onDismissed: (direction) {
                setState(() {
                  list.removeAt(index);
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  AppImage(path: 'on_boarding2.png', height: 142.h),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Classic Blazar',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'Size:xl',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        '\$83.97',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40.w),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex--;
                            if (selectedIndex < 0) {
                              selectedIndex = 0;
                            }
                          });
                        },
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(Icons.remove),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text('$selectedIndex', style: TextStyle(fontSize: 20.sp)),
                      SizedBox(width: 10.w),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex++;
                          });
                        },
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Model {
  final String name;
  final String size;
  final double price;
  final String imagePath;

  Model({
    required this.name,
    required this.size,
    required this.price,
    required this.imagePath,
  });
}
