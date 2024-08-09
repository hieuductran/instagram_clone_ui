import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldLoginSignup extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String type;
  final FocusNode focusNode;
  const TextFieldLoginSignup(
      {super.key,
      required this.controller,
      required this.icon,
      required this.type,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 45.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
          child: TextField(
            style: TextStyle(
                fontSize: 18.sp,
                color: Colors
                    .black), // TODO : 18.sp nằm trong gói screenutil (đã tìm hiểu )
            controller: controller,
            focusNode: focusNode, // TODO : focusNode dùng để làm gì (đã tìm hiểu)
            decoration: InputDecoration(
              // TODO: Tìm hiểu về contentPadding, enabledBorder, forcusedBorder bên dưới (đã tìm hiểu)
              hintText: type,
              prefixIcon: Icon(
                icon,
                color: focusNode.hasFocus ? Colors.black : Colors.grey,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              enabledBorder: OutlineInputBorder(
                  // dùng để thay đổi input khi nhấp chuột vào hoặc là tương tác
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Colors.black, width: 2.w)),
              focusedBorder: OutlineInputBorder(
                  // khi nhấp chuột vào ô input sẽ có radius là 5.r, viền đen và độ rộng là 2.w
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Colors.black, width: 2.w)),
            ),
          )),
    );
  }
}
