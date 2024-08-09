import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone_ui/global/route.dart';
import 'package:instagram_clone_ui/screen/login/widgets/login_navigator_signup.dart';
import 'package:instagram_clone_ui/screen/widgets/button_login_signup.dart';
import 'package:instagram_clone_ui/screen/widgets/textfield_login_signup.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();
  final username = TextEditingController();
  FocusNode username_F = FocusNode();
  final bio = TextEditingController();
  FocusNode bio_F = FocusNode();
  final password = TextEditingController();
  FocusNode password_F = FocusNode();
  final passwordConfirme = TextEditingController();
  FocusNode passwordConfirme_F =
      FocusNode(); // TODO : Tìm hiểu về FocusNode là gì ?

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                // TODO : Tìm hiểu cách khai báo kích thước bên dưới
                width: 96.w,
                height: 60.w,
              ),
              Center(child: Image.asset('assets/images/logo.jpg')),
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: CircleAvatar(
                  radius: 38.r,
                  backgroundColor: Colors.grey,
                  backgroundImage: const AssetImage('assets/images/person.png'),
                ),
              ),
              SizedBox(
                height: 50.h,
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
                  controller: username,
                  icon: Icons.person,
                  type: 'Username',
                  focusNode: username_F),
              SizedBox(
                height: 13.h,
              ),
              TextFieldLoginSignup(
                  controller: bio,
                  icon: Icons.abc,
                  type: 'bio',
                  focusNode: bio_F),
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
              TextFieldLoginSignup(
                  controller: passwordConfirme,
                  icon: Icons.lock,
                  type: 'Password Confirme',
                  focusNode: passwordConfirme_F),
              SizedBox(
                height: 13.h,
              ),
              const ButtonLoginSignup(
                nameButton: 'Sign Up',
              ),
              SizedBox(
                height: 13.h,
              ),
              const LoginNavigatorSignup(
                subTitle: 'Do have account? ',
                mainTitle: 'Login ',
                routerName: AppRouter.login,
              )
            ],
          ),
        ),
      ),
    );
  }
}
