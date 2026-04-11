import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: AppButton(
            width: 200.w,
            text: 'Confirm Payment', onPressed: () {}),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AppImage(path: 'arrow_lift.png', width: 24.w, height: 24.h),
        title: const Text(
          'Payment Methods',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),

            Text(
              'Credit & Debit Cards',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16.h),
            AppInput(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppImage(
                  path: 'credit_card.png',
                  width: 5.w,
                  height: 5.h,
                ),
              ),
              label: 'Add Card',
              isBorder: 20.r,
            ),
            SizedBox(height: 22.h),
            Text(
              'More Payment Options',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Paypal'),
                    leading: AppImage(
                      path: 'Paypal.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18.r),
                      ),

                      child: CircleAvatar(
                        maxRadius: 12.r,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Divider(height: 2.h, color: Colors.black87),
                  ListTile(
                    title: Text('Apple Pay'),
                    leading: AppImage(
                      path: 'apple.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18.r),
                      ),

                      child: CircleAvatar(
                        maxRadius: 12.r,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Divider(height: 0.5.h, color: Colors.black87),
                  ListTile(
                    title: Text('Google'),
                    leading: AppImage(
                      path: 'google.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18.r),
                      ),

                      child: CircleAvatar(
                        maxRadius: 12.r,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final int index;

  const _Item({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        border: Border(
          top: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: ListTile(
        leading: AppImage(path: list[index].image, width: 24.w, height: 24.h),
        title: Text(list[index].name),
        trailing: Icon(Icons.radio_button_unchecked),
      ),
    );
  }
}

class Pay {
  String image;
  String name;

  Pay(this.image, this.name);
}

final List<Pay> list = [
  Pay('apple.png', 'Apple Pay'),
  Pay('paypal.svg', 'Paypal'),
  Pay('google.png', 'Google Pay'),
];
