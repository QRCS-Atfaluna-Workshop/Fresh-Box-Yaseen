import 'package:flutter/material.dart';


import '../../data/data_base.dart';
import '../widget/app_bar.dart';
import '../widget/horizental_food_card.dart';
import '../widget/vertical_food_card.dart';

class PopularFoodScreen extends StatelessWidget {
  const PopularFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = DataBase().getAllFoods();
    final recommendedFoods = DataBase().getRecommendedFoods();
    final backGroundColors = [Color(0x66EB6C58) , Color(0xFFF0F3F9), Color(0xFFD1CFD5)];
    return Scaffold(
      appBar: MyAppBar(
        title: "Popular Food",
        leadingIcon: Icon(Icons.arrow_back_ios_new),
        actionIcon: Icon(Icons.search),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: foods.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 19,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return VerticalFoodCard(food: foods[index]);
                },
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: recommendedFoods.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: HorizontalFoodCard(
                      backGroundColor: backGroundColors[index],
                      food: recommendedFoods[index],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
