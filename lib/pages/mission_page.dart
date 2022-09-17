import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:injewelme_mission/components/food_info.dart';
import 'package:injewelme_mission/components/food_time.dart';
import '../components/food_bar_chart.dart';
import '../components/food_pie_chart.dart';

class MissionPage extends StatelessWidget {
  const MissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            _buildFoodRow(
              title: "조식",
              totalKcal: 828,
              name: "율무밥",
              type: "밥류",
              ingredient: "흰쌀",
              quantity: 210,
              foodKcal: 130,
            ),
            _buildFoodRow(
              title: "중식",
              totalKcal: 781,
              name: "열무보리비빔밥",
              type: "밥류",
              ingredient: "보리쌀",
              quantity: 210,
              foodKcal: 130,
            ),
            _buildFoodRow(
              title: "석식",
              totalKcal: 724,
              name: "찹쌀땅콩밥",
              type: "밥류",
              ingredient: "찹쌀,땅콩",
              quantity: 210,
              foodKcal: 130,
            ),
            SizedBox(
              height: 30,
            ),
            FoodBarChart(),
            SizedBox(
              height: 30,
            ),
            FoodPieChart(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class _buildFoodRow extends StatelessWidget {
  final String title;
  final int totalKcal;
  final String name;
  final String type;
  final String ingredient;
  final int quantity;
  final int foodKcal;

  _buildFoodRow(
      {Key? key,
      required this.title,
      required this.totalKcal,
      required this.name,
      required this.type,
      required this.ingredient,
      required this.quantity,
      required this.foodKcal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 230,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: FoodTime(
              title: title,
              totalKcal: totalKcal,
            ),
          ),
          Expanded(
            flex: 7,
            child: FoodInfo(
              name: name,
              type: type,
              ingredient: ingredient,
              quantity: quantity,
              foodKcal: foodKcal,
            ),
          )
        ],
      ),
    );
  }
}
