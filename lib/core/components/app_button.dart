import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final bool isLoading;
  final String text;
  final double? width;
  final double? height;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 48.h,
      child: FilledButton(
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? SizedBox(
          height: 20.h,
          width: 20.h,
          child: const CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,
          ),
        )
            : Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}