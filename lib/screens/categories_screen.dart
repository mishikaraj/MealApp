import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';

// class CategoriesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:const Text( 'deliMeal'),),
//       //backgroundColor: Theme.of(context).accentColor,
//       body: GridView(
//         padding: const EdgeInsets.all(25),//const so it never rebuild again
//         children: DUMMY_CATEGORIES
//             .map(
//               (catData) => CategoryItem(
//                   catData.id,
//                   catData.title,
//                   catData.color,
//                 ),
//                 )
//             .toList(),
//         //designing and look of our grid
//         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//           maxCrossAxisExtent: 200,
//           childAspectRatio: 3 / 2,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//         ),
//       ),
//     );
//   }
// }

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return 
    //Scaffold(
    //   appBar: AppBar(
    //     title: const Text('DeliMeal'),
    //   ),
    //   body:
     GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                    catData.id,
                    catData.title,
                    catData.color,
                  ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      );
    //);
  }
}
