import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone_ui/global/route.dart';
import 'package:instagram_clone_ui/screen/login/widgets/login_forgot.dart';
import 'package:instagram_clone_ui/screen/login/widgets/login_navigator_signup.dart';
import 'package:instagram_clone_ui/screen/widgets/button_login_signup.dart';
import 'package:instagram_clone_ui/screen/widgets/textfield_login_signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();
  final password = TextEditingController();
  FocusNode password_F =
      FocusNode(); // TODO : Tìm hiểu về FocusNode là gì ? (đã tìm hiểu)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              // TODO : Tìm hiểu cách khai báo kích thước bên dưới (đã tìm hiểu)
              width: 96.w,
              height: 120.w,
            ),
            Center(child: Image.asset('assets/images/logo.jpg')),
            SizedBox(
              height: 120.h,
            ),
            TextFieldLoginSignup(
                controller: email,
                icon: Icons.email,
                type: 'Email',
                focusNode: email_F),
            SizedBox(
              height: 13.h,
            ),
            TextFieldLoginSignup(
                controller: password,
                icon: Icons.lock,
                type: 'Password',
                focusNode: password_F),
            SizedBox(
              height: 13.h,
            ),
            const LoginForgot(),
            SizedBox(
              height: 13.h,
            ),
            const ButtonLoginSignup(
              nameButton: 'Login',
            ),
            SizedBox(
              height: 13.h,
            ),
            const LoginNavigatorSignup(
              subTitle: "Don't have acount? ",
              mainTitle: 'Signup ',
              routerName: AppRouter.signup,
            )
          ],
        ),
      ),
    );
  }
}
