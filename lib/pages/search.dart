import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _currentIndex = 1;
  final Color selectedColor = const Color(0xFFb98715);

  // Active category selected
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 43.0), // Adding top padding here
        child: Column(
          children: [
            // Search Bar Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Material(
                          color: Theme.of(context).colorScheme.tertiary,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'What are you looking for?',
                              hintStyle: TextStyle(
                                color: Theme.of(context).colorScheme.background,
                                //fontWeight: FontWeight.bold,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              suffixIcon: Icon(
                                Icons.mic,
                                color: Theme.of(context).colorScheme.background,
                              ), // Mic icon added
                              border: InputBorder.none, // Removed border
                              filled: true,
                              fillColor: Theme.of(context).colorScheme.tertiary,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                  SizedBox(height: 8), // Padding between bars
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Define action for Where
                          },
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.near_me,
                                    size: 18,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                  ), // Gray icon
                                  SizedBox(width: 8),
                                  Text(
                                    'Where?',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background, // Gray text
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Define action for When
                          },
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    size: 18,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                  ), // Gray icon
                                  SizedBox(width: 8),
                                  Text(
                                    'When?',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background, // Gray text
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8), // Padding below search bars
            // Category Section
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(
                    text: 'All',
                    isSelected: selectedCategory == 'All',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'All';
                      });
                    },
                  ),
                  CategoryButton(
                    text: 'Hair',
                    isSelected: selectedCategory == 'Hair',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Hair';
                      });
                    },
                  ),
                  CategoryButton(
                    text: 'Shaving',
                    isSelected: selectedCategory == 'Shaving',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Shaving';
                      });
                    },
                  ),
                  CategoryButton(
                    text: 'Beard',
                    isSelected: selectedCategory == 'Beard',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Beard';
                      });
                    },
                  ),
                  CategoryButton(
                    text: 'Moustache',
                    isSelected: selectedCategory == 'Moustache',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Moustache';
                      });
                    },
                  ),
                ],
              ),
            ),
            // Results and Filter Icon Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Results (8)', // You can adjust the number dynamically
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {
                      // Add filter action if needed
                    },
                  ),
                ],
              ),
            ),
            // Barber List Section
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), // Padding for Barber Tiles
                children: [
                  BarberTile(
                    name: "Maginoo Barber",
                    address: "8391 Elgin St, Celina, Delaware",
                    distance: "1.1 km",
                    rating: 4.9,
                    imageAsset: 'lib/assets/maginoo.png',
                  ),
                  BarberTile(
                    name: "Pompadour Barber",
                    address: "2118 Thornridge Dr, Sydney",
                    distance: "1.3 km",
                    rating: 4.8,
                    imageAsset: 'lib/assets/pompadour.jpg',
                  ),
                  BarberTile(
                    name: "El Calle Barber",
                    address: "8391 Elgin St, Celina, Delaware",
                    distance: "1.4 km",
                    rating: 4.7,
                    imageAsset: 'lib/assets/el calle.png',
                  ),
                  BarberTile(
                    name: "Chicles Barber Shop",
                    address: "2644 Royal Ln, Mesa, New Jersey",
                    distance: "2.4 km",
                    rating: 4.6,
                    imageAsset: 'lib/assets/chicles.jpg',
                  ),
                  BarberTile(
                    name: "Supremo Barber Shop",
                    address: "Brgy, Langkaan 1, Dasmariñas, Cavite",
                    distance: "1.2 km",
                    rating: 4.8,
                    imageAsset: 'lib/assets/supremo.jpg',
                  ),
                  BarberTile(
                    name: "The Man Cave SearchPage",
                    address: "Manila, Philippines",
                    distance: "3 .4 km",
                    rating: 3.7,
                    imageAsset: 'lib/assets/man_cave.jpg',
                  ),
                  BarberTile(
                    name: "Headroom Barber Shop",
                    address: "Brgy. San Roque, Angono,Rizal",
                    distance: "4.1 km",
                    rating: 4.5,
                    imageAsset: 'lib/assets/Headroom.jpg',
                  ),
                  BarberTile(
                    name: "Suave Barber Shop",
                    address: "Las Piñas, Philippines",
                    distance: "3.1 km",
                    rating: 4.1,
                    imageAsset: 'lib/assets/suave.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
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
    );
  }
}

// Category Button Widget
class CategoryButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  CategoryButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? Color(0xFFb98715)
              : Colors.transparent, // White if selected, grey if not
          borderRadius: BorderRadius.circular(10), // Adjusted the border radius
          border: isSelected
              ? Border.all(
                  color: Color(0xFFb98715)) // Amber border when selected
              : Border.all(
                  color: Colors.transparent), // No border when not selected
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context)
                    .colorScheme
                    .background, // Text is white when selected
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Barber Tile Widget inside Elevated Container
class BarberTile extends StatelessWidget {
  final String name;
  final String address;
  final String distance;
  final double rating;
  final String imageAsset;

  BarberTile({
    required this.name,
    required this.address,
    required this.distance,
    required this.rating,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Material(
        color: Theme.of(context).colorScheme.tertiary,
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: SizedBox(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on,
                      size: 16,
                      color: Theme.of(context)
                          .colorScheme
                          .background), // Location icon
                  SizedBox(width: 4), // Padding between icon and address
                  Expanded(child: Text(address)),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  SizedBox(width: 4),
                  Text(rating.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text(distance),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
