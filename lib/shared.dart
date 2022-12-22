import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';

Widget TextFieldRecipe(
    [TextEditingController? controller,
    String? hintText,
    String? Function(String?)? validator]) {
  return TextFormField(
    validator: validator,
    controller: controller,
    style: const TextStyle(color: Colors.white),
    onChanged: (value) => {},
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(top: 15.h),
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.white30),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red), //<-- SEE HERE
      ),
    ),
  );
}

Widget CustomContainer(double? width, Widget? child, [double? height]) {
  return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          boxShadow: Constants.shadow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      // child: CustomContainer(TextInputType.name,"Recipe name (Ex: Vegetable upma)"),
      child: child);
}

Widget CustomTextField({double? height, String? hintText,keyboardType}) {
  return Container(
      height: height,
      decoration: BoxDecoration(
          boxShadow: Constants.shadow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      // child: CustomContainer(TextInputType.name,"Recipe name (Ex: Vegetable upma)"),
      child: TextField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10.w),
            hintText: hintText,
            fillColor: Colors.white,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 16.sp),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          )));
}

Widget Hours(index) {
  return SizedBox(
    // color: Colors.blue,
    child: Text(
      index < 10 ? "0$index" : index.toString(),
      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
    ),
  );
}

Widget Minutes(index) {
  return SizedBox(
    // color: Colors.blue,
    child: Text(
      index < 10 ? "0$index" : index.toString(),
      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
    ),
  );
}

Widget CustomButton(button) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Constants.primary),
            child: button)),
  );
}
