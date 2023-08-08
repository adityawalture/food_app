import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/models/meal_model.dart';

class FavoriteMealsNotifier extends StateNotifier {
  FavoriteMealsNotifier() : super([]);

  void toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final favoriteMealsProvider = StateNotifierProvider();
