class Food {
  final String name;
  final String imagePath;
  final int? discount;
  final double time;
  final bool isFavourite;
  final double review;
  final double price;
  final String? description;

  Food({
    required this.name,
    required this.imagePath,
    this.discount,
    required this.time,
    this.isFavourite = false,
    required this.review,
    required this.price,
    this.description,
  });
}
