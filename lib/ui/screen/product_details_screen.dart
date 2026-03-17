import 'package:flutter/material.dart';
import 'package:fresh_box/ui/widget/app_bar.dart';

import '../../data/data_base.dart';
import '../../model/food.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Food food;

  const ProductDetailsScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    final foods = DataBase().getRecommendedFoods();
    return Scaffold(
      appBar: MyAppBar(
        title: food.name,
        actionIcon: Icon(Icons.menu),
        leadingIcon: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              food.imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    food.description ?? '',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                    maxLines: 2,
                  ),
                ),
                Text(
                  '${food.price.toInt().toString()}\$',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffF26333),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4,),
            Text(
              'Lorem ipsum et dolor sit amet, and consectetur eadipiscing elit. Ametmo magna the cursus yum dolor praesenta the  pulvinar tristique the food.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 12,),
            Text('Reviews', style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w500
            ),),

            SizedBox(height: 12,),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foods.length,
                  itemBuilder: (context , index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(foods[index].imagePath),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
