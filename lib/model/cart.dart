import 'package:fresh_box/model/review.dart';

import 'food.dart';

class Cart {
  final List<Food> foods;
  final String recepientAddress;
  final double totalPrice;
  final List<Review> reviews;

  Cart({
    required this.foods,
    required this.recepientAddress,
    required this.totalPrice,
    required this.reviews,
});

}