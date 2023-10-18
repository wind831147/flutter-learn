import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/screen/profiles_screen.dart';
import 'package:flutter_learn/screen/search_screen.dart';

class BaseLayout extends StatefulWidget {
  const BaseLayout({Key? key}) : super(key: key);

  @override
  State<BaseLayout> createState() => _BaseLayout();
}

class _BaseLayout extends State<BaseLayout> {
  int _page = 0;
  late PageController pageController; // for tabs animation
  final List<Widget> homeScreenItems = [
    const SearchPage(),
    const ProfilesPage()
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.search), backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), backgroundColor: Colors.black),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
