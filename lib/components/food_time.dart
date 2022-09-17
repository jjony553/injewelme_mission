import 'package:flutter/material.dart';

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
            color: Colors.grey,
            width: 0.5,
          ),
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "$totalKcal",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff2bbcab),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
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
