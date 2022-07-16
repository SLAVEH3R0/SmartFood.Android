import 'package:flutter/material.dart';
import 'package:smartfood/models/category.dart';
import 'package:smartfood/models/recipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartFood',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecipesView(title: 'Recipes'),
    );
  }
}

class RecipesView extends StatefulWidget {
  const RecipesView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

List<Recipe> fetchRecipes() {
  const Category category = Category(id: "123", name: "Dessert");

  return [
    const Recipe(
        id: "123",
        name: "Banana Cake",
        preparationTime: 2,
        servings: 3,
        ingredients: "Banana and sugar",
        description: "",
        category: category,
        photo: "https://picsum.photos/id/102/400/300"),
    const Recipe(
        id: "123",
        name: "Chocolate Cake",
        preparationTime: 2,
        servings: 3,
        ingredients: "Cholate and sugar",
        description: "",
        category: category,
        photo: "https://picsum.photos/id/102/400/300")
  ];
}

class _RecipesViewState extends State<RecipesView> {
  var _recipes = <Recipe>[];

  @override
  void initState() {
    super.initState();
    _recipes = fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: _recipes
              .map((Recipe recipe) => ListTile(
                  title: Text(recipe.name),
                  subtitle: Text(recipe.category.name)))
              .toList(),
        ));
  }
}
