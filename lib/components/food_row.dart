import 'package:flutter/material.dart';

import 'food_info.dart';
import 'food_time.dart';

class FoodRow extends StatelessWidget {
  const FoodRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFoodRow("조식", 828, "율무밥", "밥류", "흰쌀", 210, 130),
        _buildFoodRow("중식", 781, "열무보리비빔밥", "밥류", "보리쌀", 210, 130),
        _buildFoodRow("석식", 724, "찹쌀땅콩밥", "밥류", "찹쌀,땅콩", 210, 130),
      ],
    );
  }

  Widget _buildFoodRow(
    String title,
    int totalKcal,
    String name,
    String type,
    String ingredient,
    int quantity,
    int foodKcal,
  ) {
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
