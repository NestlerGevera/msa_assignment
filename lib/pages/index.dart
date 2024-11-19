import 'package:flutter/material.dart';
import 'package:msa_assignment/components/button.dart';
import 'package:msa_assignment/components/account_box.dart';
import 'package:msa_assignment/theme/themeprovider.dart';
import 'package:provider/provider.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  Color _googleButtonColor = Colors.white; // Initial color for Google button
  Color _appleButtonColor = Colors.white; // Initial color for Apple button

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50.0),
                const Text('Welcome to',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        fontFamily: 'DeadheadRough')),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Image.asset(
                      isDarkMode
                          ? 'lib/assets/logowhite.png'
                          : 'lib/assets/logoblack.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                const Text('GigaCuts Barberia',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        fontFamily: 'DeadheadRough')),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 320.0,
                  child: const Text(
                    '''GigaCuts Barberia Premium Cuts and Shave is a top-tier barber shop app designed to provide an exceptional grooming experience.''',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginpage');
                      },
                      icon: const Icon(Icons.person),
                      label: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        iconColor: Theme.of(context).colorScheme.tertiary,
                        foregroundColor: Theme.of(context).colorScheme.tertiary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      icon: const Icon(Icons.app_registration),
                      label: const Text('Register'),
                      style: ElevatedButton.styleFrom(
                        iconColor: Theme.of(context).colorScheme.onSurface,
                        foregroundColor:
                            Theme.of(context).colorScheme.onSurface,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 350.0,
                  child: Divider(
                    height: 30.0,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                AccountBox(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 10.0),
                        const Text(
                          'or Sign in with your Google or Apple account.',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  _googleButtonColor =
                                      Colors.grey[300]!; // Change to light grey
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  _googleButtonColor =
                                      Colors.white; // Reset to white
                                });
                              },
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _googleButtonColor = Colors.grey[
                                        500]!; // Change to darker grey when clicked
                                  });
                                  // Handle Google sign-in logic here
                                  print("Google button pressed");
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: _googleButtonColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                    'lib/assets/google_icon.png', // Path to Google logo
                                    height: 30, // Height of the logo
                                  ),
                                ),
                              ),
                            ),

                            // Apple button
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  _appleButtonColor =
                                      Colors.grey[300]!; // Change to light grey
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  _appleButtonColor =
                                      Colors.white; // Reset to white
                                });
                              },
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _appleButtonColor = Colors.grey[
                                        500]!; // Change to darker grey when clicked
                                  });
                                  // Handle Apple sign-in logic here
                                  print("Apple button pressed");
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: _appleButtonColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                    'lib/assets/apple_icon.png', // Path to Apple logo
                                    height: 30, // Height of the logo
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: MyButton(
                      color: Theme.of(context).colorScheme.secondary,
                      onTap: () {
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme();
                      }),
                ),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
