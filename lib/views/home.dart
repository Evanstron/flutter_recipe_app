import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.set_meal, //food_bank_sharp,
              color: Colors.pinkAccent,
            ),
            SizedBox(width: 40),
            Text('FoodBook'),
          ],
        ),
      ),
      body: RecipeCard(
        title: 'Afang',
        rating: '4.5',
        cookTime: '15 minutes',
        thumbnailUrl:
            'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
      ),
    );
  }
}
