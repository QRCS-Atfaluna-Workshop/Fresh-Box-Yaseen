import '../model/cart.dart';
import '../model/food.dart';
import '../model/review.dart';

class DataBase {
  List<Food> getAllFoods() {
    return [
      Food(
        name: "Coco berry salad",
        imagePath: 'images/coco_salad.png',
        discount: 20,
        review: 4.5,
        time: 3,
        price: 20,
      ),
      Food(
        name: "Marinated Grilled Burger",
        imagePath: 'images/marinated.png',
        review: 4.5,
        time: 3,
        price: 20,
      ),
      Food(
        name: "Coco berry salad",
        imagePath: 'images/coco_salad.png',
        review: 4.5,
        time: 3,
        price: 20,
      ),
      Food(
        name: "Fresh Salad with Letuce",
        imagePath: 'images/fresh.png',
        review: 4.5,
        discount: 20,
        time: 3,
        price: 20,
      ),
    ];
  }

  List<Food> getRecommendedFoods() {
    return [
      Food(
        name: "Fresh Veg-Salad",
        imagePath: 'images/recommended1.png',
        review: 4.5,
        discount: 20,
        description: 'Fresh Salad with Green berry',
        time: 3,
        price: 20,
      ),
      Food(
        name: "Veg Biryani",
        imagePath: 'images/recommended2.png',
        description: 'Fresh Salad with Green berry',
        review: 4.5,
        discount: 20,
        time: 3,
        price: 20,
      ),
      Food(
        name: "Fresh Veg-Salad",
        imagePath: 'images/recommended3.png',
        review: 4.5,
        discount: 20,
        description: 'Fresh Salad with Green berry',
        time: 3,
        price: 20,
      ),

    ];
  }
  Cart getCart() {
    return Cart(
      foods: getAllFoods(),
      recepientAddress:
          '9224 Jailyn Terrace, block 2, North Maryjaneton, Tanzania, 4387242',
      totalPrice: 22,
      reviews: getReviews(),
    );
  }

  List<Review> getReviews() {
    return [
      Review(title: 'Full Vegie Salad (1 items)', price: 10.5),
      Review(title: 'Toasted Sandwich (1 items)', price: 22.5),
      Review(title: 'Delivery Fee', price: 5),
      Review(title: 'Discount', price: 8),
    ];
  }
}
