import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  void getData() async {
    //simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Nestler';
    });

    //simulate network request for a password
    String password = await Future.delayed(const Duration(seconds: 2), () {
      return 'Gevera';
    });

    print('Welcome $username $password!');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('NEPTH BARBER SHOP');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nepth Barber Shop',
          style: TextStyle(fontFamily: 'DeadheadRough'),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Hello World'),
          ),
        ],
      ),
    );
  }
}
