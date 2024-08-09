import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForgot extends StatelessWidget {
  const LoginForgot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Text(
          'Forgot your password?',
          style: TextStyle(
              fontSize: 13.sp, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
