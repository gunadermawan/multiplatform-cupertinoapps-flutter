import 'package:cuppertino/search_page.dart';
import 'package:cuppertino/settings_page.dart';
import 'package:flutter/cupertino.dart';

import 'feeds_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(primaryColor: CupertinoColors.systemOrange),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news), label: 'feeds'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: 'settings')
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const FeedsPage();
          case 1:
            return const SearchPage();
          case 2:
            return const SettingsPage();
          default:
            return const Center(
              child: Text('page not found'),
            );
        }
      },
    );
  }
}
