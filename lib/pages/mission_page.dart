import 'package:flutter/material.dart';
import '../common/colors.dart';
import '../components/food_bar_chart.dart';
import '../components/food_pie_chart.dart';
import '../components/food_row.dart';

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
              color: borderColor,
            ),
            const FoodRow(),
            const SizedBox(
              height: 30,
            ),
            const FoodBarChart(),
            const SizedBox(
              height: 30,
            ),
            const FoodPieChart(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
