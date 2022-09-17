import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodInfo extends StatefulWidget {
  final String name;
  final String type;
  final String ingredient;
  final int quantity;
  final int foodKcal;
  FoodInfo(
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text("종류"), Text(widget.type)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text("재료"), Text(widget.ingredient)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text("정량"), Text("${widget.quantity}g")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text("칼로리"), Text("${widget.foodKcal}kcal")],
          )
        ],
      ),
    );
  }
}

class IconToggleButton extends StatelessWidget {
  final bool? isSelected;
  final Function? onPressed;
  IconToggleButton({this.isSelected, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        iconSize: 30.0,
        padding: EdgeInsets.all(5),
        icon: Padding(
            padding: EdgeInsets.zero,
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
      ),
    );
  }
}
