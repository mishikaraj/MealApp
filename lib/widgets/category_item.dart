import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

// class CategoryItem extends StatelessWidget {
//   final String title;
//   final String id;
//   final Color color;

//   CategoryItem(this.id,this.title, this.color);
//   void selectCategory(BuildContext ctx) {
//     Navigator.of(ctx).push(
//       MaterialPageRoute(
//         builder: (_) {
//           return CategoryMealsScreen(id,title);
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     //return GestureDetector(
//     return InkWell(
//       onTap: () => selectCategory(context),
//       splashColor: Theme.of(context).primaryColor,
//       borderRadius: BorderRadius.circular(15),
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         child: Text(
//           title,
//           style: Theme.of(context).textTheme.title,
//         ),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//             color.withOpacity(0.5), //more transparent
//             color, //end value as less transparent
//           ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           borderRadius: BorderRadius.circular(15),
//         ),
//       ),
//     );
//   }
// }

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      //'/category-meals'
      CategoryMealsScreen.routeName,
      arguments: {'id': id, 
      'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
