import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_country_code.dart';
import 'app_image.dart';

class AppInput extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onSelectedCountryCode;
  final String? Function(String?)? validator;
  final String? path, label;
  final bool dropDown;
  final bool isPassword;
  final bool isKeyboardType;
  final double isBorder;
  final bool? isLottieControlled;
  final Widget? prefixIcon;
  final bool? isCheek;
  final TextInputType? keyboardType;
  const AppInput({
    super.key,
    this.path,
    this.dropDown = false,
    this.label,
    this.isPassword = false,
    this.isKeyboardType = false,
    this.isBorder = 25.0,
    this.controller,

    this.validator,
    this.isLottieControlled,
    this.onSelectedCountryCode,
    this.prefixIcon,
    this.isCheek = false,
    this.keyboardType,
  });

  @override
  State<AppInput> createState() => _AppInpotState();
}

class _AppInpotState extends State<AppInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.dropDown)
              Expanded(
                flex: 1,
                child: AppCountryCode(
                  onSelectedCountryCode: (value) {
                    if (widget.onSelectedCountryCode != null) {
                      widget.onSelectedCountryCode!(value);
                    }
                  },
                ),
              ),

            Expanded(
              flex: 2,
              child: TextFormField(

                validator: widget.validator,
                controller: widget.controller,
                keyboardType: widget.keyboardType,

                obscureText: widget.isPassword && isHidden,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Color(0xffF40000), width: 2),
                  ),
                  prefixIcon: widget.prefixIcon,
                  suffixIcon: widget.isCheek!
                      ? AppImage(path: 'check.png')
                      : widget.isPassword
                      ? IconButton(
                          onPressed: () {
                            isHidden = !isHidden;
                            setState(() {});
                          },
                          icon: AppImage(
                            path: isHidden
                                ? 'visabilty.png'
                                : 'visibility_on.svg',
                          ),
                        )
                      : null,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),

                  labelText: widget.label,
                  filled: true,
                  fillColor: Color(0xffE5E7EB),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.isBorder),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
