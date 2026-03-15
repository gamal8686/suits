import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ListView.separated(
              padding:  EdgeInsets.all(20.r),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => _Item(index: index,),
              //todo i don't know how to make package to make border for each item without make it for the whole list
              separatorBuilder: (context, index) =>
                  Divider(height: 1.h, color: Colors.grey[300]),
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
        borderRadius:   BorderRadius.circular(25.r),
        border: Border(
          top: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: ListTile(
         
        leading:AppImage(path: list[index].image, width: 24.w, height: 24.h),
        title: Text(list[index].name),
        trailing: Icon(Icons.radio_button_unchecked),
      ),  );
  }
}
class Pay{
  String image;
  String name;

  Pay( this.image, this.name);
}
final List<Pay> list =[

  Pay('apple.png', 'Apple Pay'),
  Pay('paypal.svg', 'Paypal'),
  Pay('google.png', 'Google Pay'),
];