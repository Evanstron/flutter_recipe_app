// var req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");
//
// req.query({
// "start": "0",
// "limit": "18",
// "tag": "list.recipe.popular"
// });
//
// req.headers({
// "x-rapidapi-key": "7e3f7d768amshe8e81c0a55cb31bp1d0abcjsne1fe702285a0",
// "x-rapidapi-host": "yummly2.p.rapidapi.com",
// "useQueryString": true
// });

import 'dart:convert';

import 'package:flutter_recipe_app/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', 'feeds/list',
        {"start": "0", "limit": "18", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "7e3f7d768amshe8e81c0a55cb31bp1d0abcjsne1fe702285a0",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": 'true'
    });
    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
