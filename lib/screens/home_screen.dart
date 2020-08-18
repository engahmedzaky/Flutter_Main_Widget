import 'package:flutter/material.dart';
import 'package:main_widgets/screens/login_screen.dart';
import 'package:main_widgets/screens/onboarding_screen.dart';
import 'package:main_widgets/usded_widgets/grid_view_tab.dart';
import 'package:main_widgets/usded_widgets/list_view_tab.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                drawer: Drawer(
                  child: ListView(
                    children: <Widget>[
                      DrawerHeader(
                        child: Text(
                          'Widget App',
                          style: TextStyle(fontSize: 40.0),
                        ),
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                      ListTile(
                        title: Text('Home Screen'),
                        leading: Icon(Icons.home),
                        onTap: () =>
                            Navigator.pushNamed(context, HomeScreen.id),
                      ),
                      ListTile(
                        title: Text('Login Screen'),
                        leading: Icon(Icons.account_box),
                        onTap: () =>
                            Navigator.pushNamed(context, LoginScreen.id),
                      ),
                      ListTile(
                        title: Text('Onboarding Screen'),
                        leading: Icon(Icons.airplay),
                        onTap: () =>
                            Navigator.pushNamed(context, OnboardingScreen.id),
                      ),
                    ],
                  ),
                ),
                appBar: AppBar(
                  title: Text('Tabs Test'),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        child:
                            Text('Grid View', style: TextStyle(fontSize: 24.0)),
                      ),
                      Tab(
                        child: Text(
                          'List View',
                          style: TextStyle(fontSize: 24.0),
                        ),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    GridViewTab(),
                    ListViewTab(),
                  ],
                ))));
  }
}
