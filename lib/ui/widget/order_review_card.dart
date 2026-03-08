import 'package:flutter/material.dart';
import '../../model/review.dart';

class OrderReviewCard extends StatelessWidget {
  final Review review;

  const OrderReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            review.title,
            style: TextStyle(
              color: Color(0xFF363D4E),
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            '\$${review.price}',
            style: TextStyle(
              color: Color(0xFF363D4E),
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
