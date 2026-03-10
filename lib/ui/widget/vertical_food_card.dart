import 'package:flutter/material.dart';
import '../../../model/food.dart';


class VerticalFoodCard extends StatelessWidget {
  final Food food;

  const VerticalFoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 271,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(8 , 8),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(food.imagePath),
                if (food.discount != null)
                  Container(
                    margin: EdgeInsetsGeometry.all(6),
                    width: 53,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xFFEB6A58),
                      borderRadius: BorderRadiusDirectional.circular(4.5),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Image.asset('images/discount.png'),
                        SizedBox(width: 4),
                        Text(
                          '-${food.discount.toString()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: Text(
                food.name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.timer, color: Colors.grey, size: 18),
                SizedBox(width: 4),
                Text(
                  '${food.time.toString()} Min',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star, color: Colors.green, size: 18),
                SizedBox(width: 4),
                Text(
                  food.review.toString(),
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Image.asset('images/heart.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
