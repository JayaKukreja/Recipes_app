import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/shared.dart';

List<String> list = ["Person(s)", "Group(of 10)"];
String dropdownValue = list[0];

class CreateRecipe extends StatefulWidget {
  const CreateRecipe({super.key});

  @override
  State<CreateRecipe> createState() => _CreateRecipeState();
}

class _CreateRecipeState extends State<CreateRecipe> {
  final _prephourController = FixedExtentScrollController();
  final _prepminuteController = FixedExtentScrollController();
  final _cookhourController = FixedExtentScrollController();
  final _cookminuteController = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: const Color.fromRGBO(0, 0, 63, 1),
            ),
            width: double.infinity,
            // alignment: Alignment.center,
            // height: 30.h,
            padding: EdgeInsets.only(left: 5.w, top: 10.h, bottom: 10.h),
            child: Text(
              "Upload image of the recipe or do it later",
              // textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white60, fontSize: 15.sp),
            ),
          ),
          CustomContainer(
              double.infinity,
              TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10.w),
                    hintText: "qwertyu",
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16.sp),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ))),
          SizedBox(
            height: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Serves",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    CustomContainer(
                        100.w,
                        TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10.w),
                              hintText: "2",
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 16.sp),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ))),
                    SizedBox(
                      width: 50.w,
                    ),
                    CustomContainer(
                        120.w,
                        DropdownButton<String>(
                          alignment: Alignment.topCenter,
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                          // underline: Container(
                          //   height: 2,
                          //   color: Colors.deepPurpleAccent,
                          // ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            // color: Colors.red,
            height: 90.h,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prep Time",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(height: 10.h,),
                    CustomContainer(
                        100.w,
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: ListWheelScrollView.useDelegate(
                                    magnification: 1.5,
                                    itemExtent: 40.h,
                                    perspective: .005,
                                    controller: _prephourController,
                                    physics: const FixedExtentScrollPhysics(),
                                    childDelegate:
                                        ListWheelChildBuilderDelegate(
                                            childCount: 60,
                                            builder: (context, index) {
                                              return Hours(index);
                                            })),
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: ListWheelScrollView.useDelegate(
                                    magnification: 1.5,
                                    itemExtent: 40.h,
                                    perspective: .005,
                                    controller: _prepminuteController,
                                    physics: const FixedExtentScrollPhysics(),
                                    childDelegate:
                                        ListWheelChildBuilderDelegate(
                                            childCount: 60,
                                            builder: (context, index) {
                                              return Minutes(index);
                                            })),
                              ),
                            ),
                          ],
                        ),
                        58.h),
                  ],
                ),
                SizedBox(
                  width: 50.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cook Time",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(height: 10.h,),
                    CustomContainer(
                        100.w,
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: ListWheelScrollView.useDelegate(
                                    itemExtent: 40.h,
                                    magnification: 1.5,
                                    perspective: .005,
                                    controller: _cookhourController,
                                    physics: const FixedExtentScrollPhysics(),
                                    childDelegate:
                                        ListWheelChildBuilderDelegate(
                                            childCount: 60,
                                            builder: (context, index) {
                                              return Hours(index);
                                            })),
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: ListWheelScrollView.useDelegate(
                                    magnification: 1.5,
                                    itemExtent: 40.h,
                                    perspective: .005,
                                    controller: _cookminuteController,
                                    physics: const FixedExtentScrollPhysics(),
                                    childDelegate:
                                        ListWheelChildBuilderDelegate(
                                            childCount: 60,
                                            builder: (context, index) {
                                              return Minutes(index);
                                            })),
                              ),
                            ),
                          ],
                        ),
                        58.h),
                  ],
                ),
              ],
            ),
          ),
          CustomButton(IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.done,
                color: Colors.white,
              )))
        ],
      ),
    );
  }
}
