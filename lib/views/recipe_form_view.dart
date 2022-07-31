import 'package:flutter/material.dart';

class RecipeFromView extends StatefulWidget {
  const RecipeFromView({Key? key}) : super(key: key);

  @override
  State<RecipeFromView> createState() => _RecipeFromViewState();
}

class _RecipeFromViewState extends State<RecipeFromView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
      ),
      body: const Center(child: Text('Recipe Form')),
    );
  }
}
