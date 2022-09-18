import 'package:flutter/material.dart';

class FoodBarChart extends StatefulWidget {
  const FoodBarChart({super.key});

  @override
  State<FoodBarChart> createState() => _FoodBarChartState();
}

class _FoodBarChartState extends State<FoodBarChart>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;
  Animation<double>? curve;
  @override
  void initState() {
    animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    curve = CurvedAnimation(
        parent: animationController!, curve: Curves.bounceInOut);
    animation = Tween<double>(begin: 0, end: 1).animate(curve!)
      ..addListener(() {
        setState(() {});
      });
    animationController?.forward(from: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double customWidth = MediaQuery.of(context).size.width - 80;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "다량영양소",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            _foodBarChartItem(
              "탄수화물",
              86,
              const Color(0xff1261c4),
              customWidth,
              animation,
              animationController,
            ),
            _foodBarChartItem(
              "단백질",
              35,
              const Color(0xff1a8cd8),
              customWidth,
              animation,
              animationController,
            ),
            _foodBarChartItem(
              "지방",
              51,
              const Color(0xff28aaff),
              customWidth,
              animation,
              animationController,
            ),
            _foodBarChartItem(
              "총 식이섬유",
              14,
              const Color(0xff4caf50),
              customWidth,
              animation,
              animationController,
            ),
            _foodBarChartItem(
              "콜레스테롤",
              48,
              const Color(0xff0cad50),
              customWidth,
              animation,
              animationController,
            ),
            _foodBarChartItem(
              "총 포화 지방산",
              96,
              const Color(0xff00dd6d),
              customWidth,
              animation,
              animationController,
            )
          ],
        )
      ],
    );
  }

  Widget _foodBarChartItem(
    String title,
    int value,
    Color mColor,
    double customWidth,
    Animation<double>? animation,
    AnimationController? animationController,
  ) {
    return GestureDetector(
        onTap: () {
          if (animationController!.isCompleted) {
            animationController.reverse();
          } else {
            animationController.forward();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Transform.scale(
                    scaleX: animation?.value,
                    child: Container(
                      width: value >= 5 ? customWidth * (value * 0.01) : 0,
                      height: 20,
                      color: mColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            value >= 5 ? "$value" : "",
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 8,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: value >= 5
                        ? customWidth - customWidth * (value * 0.01)
                        : customWidth,
                    height: 20,
                    color: const Color(0xffE4E4E4),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text("100%")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
