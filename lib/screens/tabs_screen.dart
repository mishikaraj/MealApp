import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/screens/categories_screen.dart';
import 'package:mealapp/screens/favorites_screen.dart';
import 'package:mealapp/widgets/main_drawer.dart';
 
class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  
  @override
  void initState() {
    _pages= [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(widget.favoriteMeals),
      'title': 'Your Favorite',
    },
  ];
    super.initState();
  }
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return
    // DefaultTabController(
    //   length: 2,
      //initialIndex: 1,//default index is 0
      //child: 
      Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title']),

          // bottom: TabBar(
          //   tabs: <Widget>[
          //     Tab(
          //       icon: Icon(
          //         Icons.category,
          //       ),
          //       text: 'Categories',
          //     ),
          //     Tab(
          //       icon: Icon(
          //         Icons.star,
          //       ),
          //       text: 'Favorites',
          //     ),
          //   ],
          // ),
        ),
        drawer: MainDrawer(),
        //Drawer(child: Text('The Drawer!'),),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
        ),
        // TabBarView(
        //   children: <Widget>[
        //     CategoriesScreen(),
        //     FavoritesScreen(),
        //   ],
        // ),
      //),
    );
  }
}