import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginNavigatorSignup extends StatelessWidget {
  final String subTitle;
  final String mainTitle;
  final String routerName;
  const LoginNavigatorSignup(
      {super.key,
      required this.subTitle,
      required this.mainTitle,
      required this.routerName});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(routerName);
              },
              child: Text(
                mainTitle,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
