import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injewelme_mission/common/fonts.dart';

import '../common/colors.dart';

class FoodInfo extends StatefulWidget {
  final String name;
  final String type;
  final String ingredient;
  final int quantity;
  final int foodKcal;
  const FoodInfo(
      {super.key,
      required this.name,
      required this.type,
      required this.ingredient,
      required this.quantity,
      required this.foodKcal});

  @override
  State<FoodInfo> createState() => _FoodInfoState();
}

class _FoodInfoState extends State<FoodInfo> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, left: 16, right: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: borderColor,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: titleFontSize),
              ),
              IconToggleButton(
                isSelected: isSelected,
                onPressed: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          _buildItemRow("종류", widget.type),
          _buildItemRow("재료", widget.ingredient),
          _buildItemRow("정량", "${widget.quantity}g"),
          _buildItemRow("칼로리", "${widget.foodKcal}kcal"),
        ],
      ),
    );
  }

  Widget _buildItemRow(String info, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(info), Text(text)],
      ),
    );
  }
}

class IconToggleButton extends StatelessWidget {
  final bool? isSelected;
  final Function? onPressed;
  const IconToggleButton({super.key, this.isSelected, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 25.0,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Container(
          child: isSelected == false
              ? const Icon(
                  CupertinoIcons.heart,
                  color: Colors.redAccent,
                )
              : const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.redAccent,
                )),
      onPressed: () {
        onPressed!();
      },
    );
  }
}
