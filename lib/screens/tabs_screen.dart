import 'package:flutter/material.dart';

import './categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [CategoriesScreen(), FavoritesScreen()];

  int _selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
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
          //         Icons.favorite,
          //       ),
          //       text: 'Favorites',
          //     ),
          //   ],
          // ),
        ),
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          onTap: selectPage,
          items: [
            BottomNavigationBarItem(
              label: "Categories",
              icon: Icon(Icons.category_rounded),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favourites")
          ],
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
