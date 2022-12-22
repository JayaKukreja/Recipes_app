import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/addIngredient.dart';
import 'package:recipe_app/screens/createRecipe.dart';
import 'package:recipe_app/screens/steps.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabBar get _tabBar => TabBar(
        indicatorPadding: EdgeInsets.only(bottom: 5.h),
        // padding: EdgeInsets.only(bottom: 10.h),
        // indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: CircleTabIndicator(color: Constants.primary, radius: 4.r),
        tabs: [
          Tab(
              child: Text(
            "Recipe",
            style: TextStyle(color: Constants.primary, fontSize: 15.sp),
          )),
          Tab(
              child: Text(
            "Ingredients",
            style: TextStyle(color: Constants.primary, fontSize: 15.sp),
          )),
          Tab(
              child: Text(
            "Steps",
            style: TextStyle(color: Constants.primary, fontSize: 15.sp),
          )),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            "Create Recipe",
            style: TextStyle(color: Colors.black, fontSize: 23.sp),
          ),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
                color: Colors.deepOrange[50], //<-- SEE HERE
                child: _tabBar),
          ),
        ),
        body: const TabBarView(children: [
          CreateRecipe(), AddIngredient(), Steps(),
          // Ingredients(),
          // StepAddition()
        ]),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
