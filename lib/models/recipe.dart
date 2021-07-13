import 'package:flutter_recipe_app/models/recipe.api.dart';

class Recipe {
  var name;
  var rating;
  var images;
  var totalTime;
  Recipe({this.name, this.rating, this.images, this.totalTime});

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      name: json['name'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      rating: json['rating'] as double,
      totalTime: json['totalTime'] as String,
    );
  }
  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  // @override
  // String toString() {
  //   return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  // }
}
