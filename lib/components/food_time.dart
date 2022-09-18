import 'package:flutter/material.dart';

import '../common/colors.dart';
import '../common/fonts.dart';

class FoodTime extends StatelessWidget {
  final String title;
  final int totalKcal;
  const FoodTime({super.key, required this.title, required this.totalKcal});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: borderColor,
            width: 0.5,
          ),
          bottom: BorderSide(
            color: borderColor,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: titleFontSize),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "$totalKcal",
                style: TextStyle(
                    fontSize: titleFontSize,
                    color: kcalColor,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "kcal",
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
