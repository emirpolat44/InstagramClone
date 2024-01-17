import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/HomeScreen.dart';
import 'package:untitled6/ProfileScreen.dart';
import 'package:untitled6/SearchScreen.dart';
import 'ReelsScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key,}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  late final List<Widget> _listOptions;

  @override
  void initState() {
    super.initState();

    _listOptions = <Widget>[
      const HomeScreen(),
      const SearchScreen(),
      ReelsScreen(),
      ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _listOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: const Color(0xFF121212),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(padding: EdgeInsets.symmetric(vertical: 4.0),
            child: Icon(Icons.home_outlined),
            ),

            label: '',
            backgroundColor: Color(0xFF121212),
          ),
          BottomNavigationBarItem(
            icon: Padding(padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Icon(Icons.search_outlined),
            ),
            label: '',
            backgroundColor: Color(0xFF121212),
          ),
          BottomNavigationBarItem(
            icon: Padding(padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Icon(Icons.smart_display_outlined),
            ),
            label: '',
            backgroundColor: Color(0xFF121212),
          ),
          BottomNavigationBarItem(
            icon: Padding(padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Icon(Icons.person_outline_outlined),
            ),
            label: '',
            backgroundColor: Color(0xFF121212),
          ),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        iconSize: 20.0,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}



