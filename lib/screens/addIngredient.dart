import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/shared.dart';

class AddIngredient extends StatefulWidget {
  const AddIngredient({super.key});

  @override
  State<AddIngredient> createState() => _AddIngredientState();
}

class _AddIngredientState extends State<AddIngredient> {
  bool visibility = true;
  int _count = 8;
  ScrollController listController = ScrollController();
  @override
  Widget build(BuildContext context) {
    List<Widget> ingredients =
        List.generate(_count, (int i) => const IngredientRow());

    return 
    Scaffold(backgroundColor: Colors.deepOrange[50],
        // resizeToAvoidBottomInset: false,
        floatingActionButton: CustomButton(
          TextButton(
            onPressed: () {
              setState(() {
                visibility = true;
                _count++;
              });
            },
            child: const Text(
              "Add Ingredient",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: 
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Visibility(
              visible: visibility,
              child: ListView(
                children: ingredients
                
              )),
        ))
        ;
  }
}

class IngredientRow extends StatefulWidget {
  const IngredientRow({super.key});

  @override
  State<IngredientRow> createState() => _IngredientRowState();
}

class _IngredientRowState extends State<IngredientRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: Row(
        children: [
          const Text(
            "Name:",
            // style: TextStyle(fontSize: 13.sp),
          ),
          SizedBox(
            width: 5.w,
          ),
          Expanded(flex: 2, child: CustomTextField()),
          SizedBox(
            width: 15.w,
          ),
          const Text("Quantity:"),
          SizedBox(
            width: 5.w,
          ),
          Expanded(child: CustomTextField(keyboardType: TextInputType.number)),
        ],
      ),
    );
  }
}

