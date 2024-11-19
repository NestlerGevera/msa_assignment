import 'package:flutter/material.dart';

class Bookingpage extends StatefulWidget {
  const Bookingpage({super.key});

  @override
  State<Bookingpage> createState() => _BookingpageState();
}

class _BookingpageState extends State<Bookingpage> {
  int _currentIndex = 2;
  final Color selectedColor = const Color(0xFFb98715);

  int? selectedBarberIndex;
  String? selectedDate;
  String? selectedTime;

  final List<String> barbers = [
    'Barber Name 1',
    'Barber Name 2',
    'Barber Name 3',
    'Barber Name 4',
  ];

  final List<String> dates = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
  ];

  final List<String> times = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appointment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'DeadHeadRough',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Container(
        color: Theme.of(context)
            .colorScheme
            .surface, // Match AppBar background color
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'Select Barber',
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.background,
                        fontFamily: 'DeadHeadRough'),
                  ),
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.0, // Aspect ratio for grid items
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: barbers.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedBarberIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0), // Adjust padding
                        decoration: BoxDecoration(
                          color: selectedBarberIndex == index
                              ? Theme.of(context).colorScheme.background
                              : Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.transparent, // Transparent border
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.person,
                                size: 40,
                                color: Color.fromARGB(
                                    255, 245, 150, 181)), // Profile icon
                            const SizedBox(
                                width: 8), // Space between icon and name
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    barbers[index],
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  const SizedBox(
                                      height:
                                          4), // Space between name and stars
                                  const Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Color(0xFFb98715), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFFb98715), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFFb98715), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFFb98715), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFFb98715), size: 16),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .primary, // Set the light blue background color
                    borderRadius: BorderRadius.circular(
                        30), // Set the border radius to circular
                  ),
                  padding: const EdgeInsets.all(
                      16.0), // Optional: add padding for spacing
                  child: Column(
                    children: [
                      Text(
                        'Choose the date',
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.background,
                          fontFamily: 'DeadHeadRough',
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(dates.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedDate = dates[index];
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: selectedDate == dates[index]
                                    ? Theme.of(context).colorScheme.background
                                    : Color(0xFFb98715),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded corners for date boxes
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: Text(
                                dates[index],
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .primary, // Set the light blue background color
                    borderRadius: BorderRadius.circular(
                        20), // Set the border radius to circular
                  ),
                  padding: const EdgeInsets.all(
                      16.0), // Optional: Add padding for spacing
                  child: Column(
                    children: [
                      Text(
                        'Choose the time',
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.background,
                          fontFamily: 'DeadHeadRough',
                        ),
                      ),
                      const SizedBox(height: 10),
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, // 3 columns for time selection
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1.5, // Aspect ratio for time boxes
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: times.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTime = times[index];
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              margin: const EdgeInsets.only(bottom: 8.0),
                              decoration: BoxDecoration(
                                color: selectedTime == times[index]
                                    ? Theme.of(context).colorScheme.background
                                    : Color(0xFFb98715),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: Center(
                                child: Text(
                                  times[index],
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _confirmBooking(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFFb98715), // Button background color
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Text('Book Appointment',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary)),
                ),
                const SizedBox(height: 30),
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
    );
  }

  void _confirmBooking(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Booking'),
          content: const Text('Do you really want to book this appointment?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                'Cancel',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.background),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                _bookAppointment();
                Navigator.pushNamed(
                    context, '/homepage'); // Go back to home_page
              },
              child: Text(
                'Yes',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.background),
              ),
            ),
          ],
        );
      },
    );
  }

  void _bookAppointment() {
    // Navigate back to home_page with a notification
    final snackBar = SnackBar(
      content: const Text('Booking Appointment Placed'),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
