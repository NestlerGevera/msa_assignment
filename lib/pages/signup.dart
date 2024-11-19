import 'package:flutter/material.dart';
import 'package:msa_assignment/components/account_box.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Color _googleButtonColor = Colors.white; // Initial color for Google button
  Color _appleButtonColor = Colors.white; // Initial color for Apple button
  FocusNode _nameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = false; // Variable to track password visibility

  // Controllers for the text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Listen to changes in focus
    _nameFocusNode.addListener(() {
      setState(() {});
    });

    _emailFocusNode.addListener(() {
      setState(() {});
    });

    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Clean up the focus nodes when the widget is disposed
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _nameController.dispose(); // Dispose the controller
    _emailController.dispose(); // Dispose the controller
    _passwordController.dispose(); // Dispose the controller
    super.dispose();
  }

  void _signUp() {
    // Validate input fields
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields.'),
        ),
      );
      return; // Exit the method if validation fails
    }

    // If all fields are filled, navigate to the login page
    Navigator.pushNamed(context, '/loginpage');
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign up',
            style: TextStyle(fontFamily: 'DeadheadRough'),
          ),
          backgroundColor: const Color(0xFFb98715),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFb98715),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(
                  isDarkMode
                      ? 'lib/assets/logowhite.png'
                      : 'lib/assets/logoblack.png',
                  width: 200,
                  height: 200,
                ),
                const Text(
                  'GigaCuts Barberia',
                  style: TextStyle(fontFamily: 'DeadheadRough', fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  width: double.infinity,
                  height: 600.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const Text('Sign up to use our Application'),
                        const SizedBox(
                          height: 20.0,
                        ),

                        // Full Name TextField
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                            controller: _nameController,
                            focusNode: _nameFocusNode,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: _nameFocusNode.hasFocus
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.primary,
                              hintText: "Full name",
                              hintStyle: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.background),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // E-mail TextField
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                            controller: _emailController,
                            focusNode: _emailFocusNode,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: _emailFocusNode.hasFocus
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.primary,
                              hintText: "E-mail",
                              hintStyle: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.background),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Password TextField
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                            controller: _passwordController,
                            focusNode: _passwordFocusNode,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                            ),
                            obscureText: !_isPasswordVisible,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: _passwordFocusNode.hasFocus
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.primary,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Theme.of(context).colorScheme.background,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        Center(
                          child: ElevatedButton(
                            onPressed: _signUp, // Call the sign-up method
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFb98715),
                              foregroundColor:
                                  Theme.of(context).colorScheme.background,
                              elevation: 0,
                              minimumSize: const Size(
                                  400, 50), // Set your desired width and height
                            ),
                            child: const Text('Sign up'),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Center(
                          child: AccountBox(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MouseRegion(
                                        onEnter: (_) {
                                          setState(() {
                                            _googleButtonColor = Colors.grey[
                                                300]!; // Change to light grey
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
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
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
                                            _appleButtonColor = Colors.grey[
                                                300]!; // Change to light grey
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
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
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
                        ),
                        const SizedBox(
                          height: 50,
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
    );
  }
}
