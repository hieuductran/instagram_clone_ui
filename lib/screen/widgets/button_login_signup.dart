import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonLoginSignup extends StatelessWidget {
  final String nameButton;
  const ButtonLoginSignup({super.key, required this.nameButton});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 44.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10.r)),
          child: Text(
            nameButton,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
