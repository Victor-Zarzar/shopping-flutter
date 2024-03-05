class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "Shoes", image: "lib/assets/shoes.jpg"),
  Category(title: "Beauty", image: "lib/assets/beauty.png"),
  Category(title: "PC", image: "lib/assets/pc.jpg"),
  Category(title: "Mobile", image: "lib/assets/mobile.jpg"),
  Category(title: "Watch", image: "lib/assets/watch.png"),
];
