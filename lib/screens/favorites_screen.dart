import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/meal_item.dart';
class FavoritesScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(
      child: Text('You have no fav yet-start adding some!'),
    );
    }
    else return ListView.builder(
          itemBuilder: (ctx, index) {
            //return Text(categoryMeals[index].title);
            return MealItem(
                id: favoriteMeals[index].id,
                title: favoriteMeals[index].title,
                imageUrl: favoriteMeals[index].imageUrl,
                duration:favoriteMeals[index].duration ,
                complexity:favoriteMeals[index].complexity ,
                affordability: favoriteMeals[index].affordability,
                //removeItem: _removeMeal,
                );
          },
          itemCount: favoriteMeals.length,
        );
    
  }
}