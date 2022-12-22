import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/mainPage.dart';
import 'package:recipe_app/shared.dart';
import 'package:recipe_app/validator.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: const [0.1, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              const Color.fromRGBO(166, 55, 152, 1),
              Constants.primary
            ],
          ),
        ),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      "APPNAME",
                      style: TextStyle(fontSize: 35.sp, color: Colors.white),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    TextFieldRecipe(emailController, "Enter Email",
                        Validator.validateEmail),
                    SizedBox(
                      height: 30.h,
                    ),
                    TextFieldRecipe(passwordController, "Enter Password"),
                    SizedBox(
                      height: 40.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(600, 50),
                          backgroundColor:
                              const Color.fromRGBO(107, 28, 97, 1)),
                      // onPressed: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const MainPage()));
                      // },
                      onPressed: () => Navigator.pushNamed(context, '/mainPage'),
                      child: Text("LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w300)),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(600, 50),
                          backgroundColor:
                              const Color.fromRGBO(107, 28, 97, 1)),
                      // onPressed: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const MainPage()));
                      // },
                      onPressed: () => Navigator.pushNamed(context, '/mainPage'),
                      child: Text("SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}
