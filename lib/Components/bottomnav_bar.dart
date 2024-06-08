import 'package:flutter/material.dart';
import 'package:testeur/Constants/constants.dart';
import 'package:testeur/Screens/favourite_page.dart';
import 'package:testeur/Screens/home_page.dart';
import 'package:testeur/Screens/notifications_page.dart';
import 'package:testeur/Screens/rapport_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyHomePage(),
    FavouritePage(),
    NotificationsPage(),
    RapportPage()
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.favorite,
    Icons.notifications,
    Icons.document_scanner,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        icons: _icons,
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<IconData> icons;

  const NavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Container(
        height: 68,
        width: MediaQuery.of(context).size.width * 0.7,
        margin: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, 8),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            return GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color:
                      currentIndex == index ? primaryColor : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icons[index],
                  color: currentIndex == index ? Colors.white : primaryColor,
                  size: 30,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
