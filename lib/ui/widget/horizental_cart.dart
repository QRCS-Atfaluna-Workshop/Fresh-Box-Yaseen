import 'package:flutter/material.dart';

import '../../model/food.dart';

class HorizontalCart extends StatelessWidget {
  final Food food;

  const HorizontalCart({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(12),
      width: double.infinity,
      height: 114,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(8, 8),
          ),
        ],
      ),
      child: Row(
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
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${food.price}',
                  style: TextStyle(
                    color: Color(0xFFF26333),
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  food.name,
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.green, size: 18),
                    SizedBox(width: 4),
                    Text(
                      food.review.toString(),
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFD1CFD5),
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text('1'),
                    SizedBox(width: 12),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFD1CFD5),
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
