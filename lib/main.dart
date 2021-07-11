//https://github.com/Singh-Shivani/Food_Lab.git
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/views/home.dart';

void main() => runApp(FlutterRecipe());

class FlutterRecipe extends StatelessWidget {
  //const FlutterRecipe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Book',
      theme: ThemeData(primaryColor: Colors.purple),
      home: HomePage(), //SignInPage(), //SignUpPage(), //HomePage(),
    );
  }
}
