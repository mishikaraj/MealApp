import 'package:flutter/foundation.dart'; //all these things are required

//enum used for storing all datatypes
enum Complexity {
  Simple,
  Challenging,
  Hard,
}
enum Affordibility {
  Affordable,
  Pricy,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String
      imageUrl; //in real app these meals are created on some server which will be fetched dynamically
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordibility affordibility;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal(
      {@required this.id,
      @required this.categories,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.duration,
      @required this.complexity,
      @required this.affordibility,
      @required this.isGlutenFree,
      @required this.isLactoseFree,
      @required this.isVegan,
      @required this.isVegetarian});
}
