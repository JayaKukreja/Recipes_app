import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key});

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> with TickerProviderStateMixin {
    TabController? _controller;
@override
  void initState() {
   
    _controller = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(width: 100.w,
            decoration: const BoxDecoration(color: Colors.red,
        image: DecorationImage(image: AssetImage("assets/abc.jpeg"),
        fit: BoxFit.cover)
          ), ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "Prep time",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "20 min",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "Cook time",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "08hr 00min",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "Serves",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "2 Persons",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Ingredients",
                      style: TextStyle(color: Constants.primary),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Constants.primary,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TabBar(tabs: [
                  Tab(
                    child: Text("Step 1",style: TextStyle(color: Constants.primary),),
                  ),
                  const Tab(
                    child: Text("Step 2"),
                  )
                ],
                controller: _controller,),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(controller: _controller,children: [
                 Step1(),Step2()
                  ],),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Step1() {
    return Column(
   children: [
    const Text("Soak Urad dal"),
    Row(children: [
      Container(width: 100.w,color: Colors.red,),SizedBox(width: 10.w,),
      const Text("Soak urad dal overnight .....")
    ],)
   ],
    );
  }

  Widget Step2() {
    return Column(
   children: [
    const Text("Soak Urad dal"),
    Row(children: [
      Container(width: 100.w,color: Colors.red,),SizedBox(width: 10.w,),
      const Text("Soak urad dal overnight .....")
    ],)
   ],
    );
  }
}
