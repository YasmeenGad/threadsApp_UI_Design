import 'package:flutter/material.dart';
import 'package:threads/screens/home_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  List page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  //function for icon in navigation button
  Widget gestureButton(value, icon) {
    return GestureDetector(
        onTap: () {
          setState(() {
            index = value;
          });
        },
        child: Icon(
          icon,
          size: 29,
          color: index == value ? Colors.black : Colors.grey,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              gestureButton(0, Icons.home),
              gestureButton(1, Icons.search),
              gestureButton(2, Icons.edit_square),
              gestureButton(3, Icons.favorite),
              gestureButton(4, Icons.person_2_outlined),
            ],
          ),
        ),
      ),
      body: page[index],
    );
  }
}
