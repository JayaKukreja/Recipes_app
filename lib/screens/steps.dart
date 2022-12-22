import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/finalScreen.dart';
import 'package:recipe_app/shared.dart';

List<String> list = ["Person(s)", "Group(of 10)"];
String dropdownValue = list[0];

class Steps extends StatefulWidget {
  const Steps({super.key});

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  // final _prephourController = FixedExtentScrollController();
  // final _prepminuteController = FixedExtentScrollController();
  // final _cookhourController = FixedExtentScrollController();
  // final _cookminuteController = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 10.h,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white60, boxShadow: Constants.shadow),
                    // color: Colors.red,
                    // box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
                    width: 100.w,
                    height: 100.h,
                    // color: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_outlined),
                      iconSize: 50,
                    ),
                  ),SizedBox(height: 10.h,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: const Color.fromRGBO(0, 0, 63, 1),
                    ),
                    width: double.infinity,
                    // alignment: Alignment.center,
                    // height: 30.h,
                    padding:
                        EdgeInsets.only(left: 5.w, top: 10.h, bottom: 10.h),
                    child: Text(
                      "Upload image of the recipe or do it later",
                      // textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Colors.white60, fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    // height: 80.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Step Name',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '*',
                                  style: TextStyle(color: Colors.red))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextField(hintText: "Ex: Fry rawa/sooji")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    // height: 186.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Instructions',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '*',
                                  style: TextStyle(color: Colors.red))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomContainer(
                            double.infinity,
                            TextField(
                                maxLines: 8,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10.w, top: 15.h),
                                  hintText:
                                      "Keep stirring and make sure rawa doesn't turn brown.",
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 16.sp),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    // height: 120.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Personal Touch',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomContainer(
                            double.infinity,
                            TextField(
                                maxLines: 4,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10.w, top: 15.w),
                                  hintText:
                                      "Keep stirring and make sure rawa doesn't turn brown.",
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 16.sp),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomButton(IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  actions: [
                                    CustomButton(TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ))),
                                    CustomButton(TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const FinalPage()));
                                        },
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ))),
                                  ],
                                  backgroundColor: Constants.primary,
                                  title: Column(
                                    children: [
                                      const Text(
                                        "Your Step was added successfully.",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      const Text(
                                        "Do you want to add more steps?",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ));
                      },
                      icon: const Icon(
                        Icons.done,
                        color: Colors.white,
                      )))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
