import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key, required this.title});

  final String title;

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  int _currentIndex = 3;
  final Color selectedColor = const Color(0xFFb98715);

  final List<String> allBarbers = [
    'Barber Nestler',
    'Barber CJ',
    'Barber Ezekiel',
    'Barber JM',
    'Hair Stylist Shaina'
  ];

  List<String> favoriteBarbers = [];

  void _toggleFavorite(String barber) {
    setState(() {
      if (favoriteBarbers.contains(barber)) {
        favoriteBarbers.remove(barber);
      } else {
        favoriteBarbers.add(barber);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: allBarbers.map((barber) {
            final isFavorite = favoriteBarbers.contains(barber);
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                border:
                    Border.all(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(
                  barber,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () => _toggleFavorite(barber),
                ),
              ),
            );
          }).toList(),
        ),
        // Bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
              if (newIndex == 0) {
                Navigator.pushNamed(context, '/homepage');
              } else if (newIndex == 1) {
                Navigator.pushNamed(context, '/searchpage');
              } else if (newIndex == 2) {
                Navigator.pushNamed(context, '/bookingpage');
              } else if (newIndex == 3) {
                Navigator.pushNamed(context, '/favoritespage');
              } else if (newIndex == 4) {
                Navigator.pushNamed(context, '/userprofile');
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0
                    ? selectedColor
                    : Theme.of(context).colorScheme.background,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              icon: Icon(
                Icons.search,
                color: _currentIndex == 1
                    ? selectedColor
                    : Theme.of(context).colorScheme.background,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              icon: Icon(
                Icons.calendar_month,
                color: _currentIndex == 2
                    ? selectedColor
                    : Theme.of(context).colorScheme.background,
              ),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              icon: Icon(
                Icons.favorite,
                color: _currentIndex == 3
                    ? selectedColor
                    : Theme.of(context).colorScheme.background,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              icon: Icon(
                Icons.person_rounded,
                color: _currentIndex == 4
                    ? selectedColor
                    : Theme.of(context).colorScheme.background,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
