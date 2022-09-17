import 'package:flutter/material.dart';

class FoodBarChart extends StatelessWidget {
  const FoodBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    double customWidth = MediaQuery.of(context).size.width - 80;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "다량영양소",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            FoodBarChartItem("탄수화물", 86, const Color(0xff1261c4), customWidth),
            FoodBarChartItem("단백질", 35, const Color(0xff1a8cd8), customWidth),
            FoodBarChartItem("지방", 51, const Color(0xff28aaff), customWidth),
            FoodBarChartItem(
                "총 식이섬유", 14, const Color(0xff4caf50), customWidth),
            FoodBarChartItem("콜레스테롤", 48, const Color(0xff0cad50), customWidth),
            FoodBarChartItem(
                "총 포화 지방산", 96, const Color(0xff00dd6d), customWidth),
          ],
        )
      ],
    );
  }

  Widget FoodBarChartItem(
      String title, int value, Color mColor, double customWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Container(
          width: double.infinity,
          child: Row(
            children: [
              Container(
                width: value >= 5 ? customWidth * (value * 0.01) : 0,
                height: 20,
                color: mColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      value >= 5 ? "${value}" : "",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 8,
                    )
                  ],
                ),
              ),
              Container(
                width: value >= 5
                    ? customWidth - customWidth * (value * 0.01)
                    : customWidth,
                height: 20,
                color: Color(0xffE4E4E4),
              ),
              SizedBox(
                width: 2,
              ),
              Text("100%")
            ],
          ),
        )
      ],
    );
  }
}
