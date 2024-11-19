import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final Color selectedColor = const Color(0xFFb98715);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  // User profile and notifications row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                AssetImage('lib/assets/nestler.jpg'),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hello'),
                                Text(
                                  'Nestler Gevera',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.notifications),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.logout),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Logout Confirmation"),
                                    content: Text(
                                        "Are you sure you want to logout?"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          // Close the dialog
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("No",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .background,
                                            )),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Navigate to the logout route
                                          Navigator.of(context)
                                              .pop(); // Close the dialog
                                          Navigator.pushNamed(context, '/');
                                        },
                                        child: Text("Yes",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .background,
                                            )),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20.0),

                  // Finished service section
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Finished',
                                  style: TextStyle(color: Color(0xFFb98715)),
                                ),
                                Text(
                                  'Beard trim',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text('Don Carleone Barber'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 2.0),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('April'),
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text('12:20'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20.0),

                  // Services section header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("View All button clicked!");
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: Color(0xFFb98715),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10.0),

                  Container(
                    height: 70,
                    width: double.infinity,
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                              child: Icon(
                                Icons.cut,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                              child: Icon(
                                Icons.balance,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                              child: Icon(
                                Icons.percent,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                              child: Icon(
                                Icons.settings_display,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                              child: Icon(
                                Icons.hail,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20.0),

                  // Special offers section header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Special Offers',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("View All button clicked!");
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: Color(0xFFb98715),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10.0),

                  Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 4.0),
                    child: Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                  )),
                              height: 150,
                              width: 200,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'lib/assets/specialoffer1.png',
                                    width: 200,
                                    height: 150,
                                  ),
                                  const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('VIP Room Barber',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            Text('Beard shaving'),
                                          ],
                                        ),
                                        Text(
                                          '-15%',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xFFb98715),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                  )),
                              height: 150,
                              width: 200,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'lib/assets/specialoffer2.png',
                                    width: 200,
                                    height: 150,
                                  ),
                                  const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('SuperHiper Barber',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            Text("Children's Haircut"),
                                          ],
                                        ),
                                        Text(
                                          '-15%',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xFFb98715),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                  )),
                              height: 150,
                              width: 200,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'lib/assets/specialoffer1.png',
                                    width: 200,
                                    height: 150,
                                  ),
                                  const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('VIP Room Barber',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            Text('Beard shaving'),
                                          ],
                                        ),
                                        Text(
                                          '-15%',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xFFb98715),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20.0),

                  // Special offers section header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Nearby You',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("View All button clicked!");
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: Color(0xFFb98715),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20.0),

                  Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 4.0),
                    child: Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'lib/assets/specialoffer2.png',
                                      width: 150,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Jackson's Smith Barber"),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          Text(
                                              '6391 Elgin St. Celina, Del Bucks'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Color(0xFFb98715)),
                                          Text('4.9 - 11 km'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'lib/assets/specialoffer1.png',
                                      width: 150,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Jackson's Smith Barber"),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          Text(
                                              '6391 Elgin St. Celina, Del Bucks'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Color(0xFFb98715)),
                                          Text('4.9 - 11 km'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'lib/assets/specialoffer2.png',
                                      width: 150,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Jackson's Smith Barber"),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          Text(
                                              '6391 Elgin St. Celina, Del Bucks'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Color(0xFFb98715)),
                                          Text('4.9 - 11 km'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
