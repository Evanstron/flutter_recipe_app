class Recipe {
  final String name = '';
  final double rating = 0;
  final String images = '';
  final String totalTime = '';
  Recipe({this.name, this.rating, this.images, this.totalTime});

  factory Recipe.fromjson(dynamic json) {
    return Recipe(
      name: json['name'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      rating: json['rating'] as double,
      totalTime: json['totalTime'] as String,
    );
  }


  }
}
