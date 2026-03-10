import 'package:flutter/material.dart';
import '../../../model/food.dart';

class HorizontalFoodCard extends StatelessWidget {
  final Color backGroundColor;
  final Food food;

  const HorizontalFoodCard({
    super.key,
    required this.backGroundColor,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: backGroundColor,

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(16 , 16),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(food.imagePath),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                food.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 3),
              Text(
                food.description.toString(),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 11),
              Text(
                '\$${food.price.toString()}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
