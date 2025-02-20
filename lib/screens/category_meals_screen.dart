import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import '../widgets/meal_item.dart';
//import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;
  CategoryMealsScreen(this.availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayedMeals;
  var _loadedInitData=false;

  void initState(){
    // ...
    super.initState();
  }

    
  @override
  void didChangeDependencies()
  {
    if(!_loadedInitData)
    { 
    final routeArgs =ModalRoute.of(context).settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    displayedMeals = widget.availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    _loadedInitData=true;
    }
    super.didChangeDependencies();
  }
  // void _removeMeal(String mealId){
  //   setState(() {
  //     displayedMeals.retainWhere((meal)=>meal.id==mealId);
  //   });
  // }

  
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            //return Text(categoryMeals[index].title);
            return MealItem(
                id: displayedMeals[index].id,
                title: displayedMeals[index].title,
                imageUrl: displayedMeals[index].imageUrl,
                duration:displayedMeals[index].duration ,
                complexity:displayedMeals[index].complexity ,
                affordability: displayedMeals[index].affordability,
                //  removeItem: _removeMeal
                );
          },
          itemCount: displayedMeals.length,
        ));
  }
}
