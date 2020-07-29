import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'comingsoon_page.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  PersistentTabController _controller;
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }


  List<Widget> _buildScreens() {
    return [
      HomePage(),
      ComingSoonPage(title: 'Search'),
      ComingSoonPage(title: 'Add Post'),
      ComingSoonPage(title: 'Activity'),
      ProfilePage(),


    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ('Home'),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ('Search'),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add_circle),
        title: ('Add Post'),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite_border),
        title: ('Activity'),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ('Account'),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
    ];
  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: PersistentTabView(
        backgroundColor: Theme
            .of(context)
            .bottomAppBarColor,
        controller: _controller,
        items: _navBarsItems(),
        screens: _buildScreens(),

        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        navBarStyle: NavBarStyle.style8,
        // Choose the nav bar style with this property
        onItemSelected: (index) {
          setState(() {
            _controller.index = index; // THIS IS CRITICAL!! Don't miss it!
          });
        },
      ),
    );

  }
}
