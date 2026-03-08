import 'package:flutter/material.dart';

import '../../data/data_base.dart';
import '../widget/app_bar.dart';
import '../widget/horizental_cart.dart';
import '../widget/order_review_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = DataBase().getAllFoods();
    final reviews = DataBase().getReviews();
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: MyAppBar(
        title: 'Cart Screen',
        leadingIcon: Icon(Icons.arrow_back_ios),
        actionIcon: Icon(Icons.search),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            HorizontalCart(food: foods[0]),
            SizedBox(height: 12),
            HorizontalCart(food: foods[1]),
            SizedBox(height: 16),
            Text(
              'Recepient Address',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 104,
              decoration: BoxDecoration(
                color: Color(0xFFD1CFD5),
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '9224 Jailyn Terrace, block 2, North Maryjaneton, Tanzania, 4387242',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Order Review',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 12),
            ListView.builder(
              itemCount: reviews.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return OrderReviewCard(review: reviews[index]);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$17',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFEB6A58),
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: Center(
                child: Text(
                  'Process to Payment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
