import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FocusNode _usernameFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = false; // Variable to track password visibility

  // Controllers for the text fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Listen to changes in focus
    _usernameFocusNode.addListener(() {
      setState(() {});
    });

    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Clean up the focus nodes when the widget is disposed
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _usernameController.dispose(); // Dispose the controller
    _passwordController.dispose(); // Dispose the controller
    super.dispose();
  }

  void _login() {
    // Check if email and password are correct
    if (_usernameController.text == 'admin' &&
        _passwordController.text == '12345') {
      // Navigate to the homepage if credentials are correct
      Navigator.pushNamed(context, '/homepage');
    } else {
      // Show an error message if credentials are incorrect
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid email or password.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
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
                  height: 500.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome back',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const Text('Login to use our Application'),
                        const SizedBox(
                          height: 20.0,
                        ),

                        // E-mail TextField
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                            controller: _usernameController,
                            focusNode: _usernameFocusNode,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: _usernameFocusNode.hasFocus
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

                        const SizedBox(height: 10),

                        GestureDetector(
                          onTap: () {
                            // Action to be taken when the text is tapped
                            print("Text clicked!");
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 15.0),
                            child: Text(
                              'Forgot password',
                              style: TextStyle(
                                  // color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: _login, // Call the login method
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFb98715),
                              foregroundColor:
                                  Theme.of(context).colorScheme.background,
                              elevation: 0,
                              minimumSize: const Size(
                                  400, 50), // Set your desired width and height
                            ),
                            child: const Text('Login'),
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
    );
  }
}
