import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your Category"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          //alternate method for rendering categories grid view
          //availableCategories.map((category) => CategoryGridItem(category: category)).toList(),
          for (final category in availabeCategories)
            CategoryGridItem(category: category),
        ],
      ),
    );
  }
}
