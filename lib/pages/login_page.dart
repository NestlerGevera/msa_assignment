import 'package:flutter/material.dart';
import 'package:msa_assignment/components/smaller_box.dart';
import 'package:msa_assignment/components/button.dart';
import 'package:msa_assignment/theme/themeprovider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nepth Barber Shop',
          style: TextStyle(fontFamily: 'DeadheadRough'),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/services_haircuts.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Center(
                child: SmallerBox(
                  color: Theme.of(context).colorScheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                          color: Theme.of(context).colorScheme.secondary,
                          onTap: () {
                            Provider.of<ThemeProvider>(context, listen: false)
                                .toggleTheme();
                          }),
                      const SizedBox(height: 50),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/user_profile');
                        },
                        icon: const Icon(Icons.person),
                        label: const Text('Go to Profile'),
                        style: ElevatedButton.styleFrom(
                          iconColor: Theme.of(context).colorScheme.tertiary,
                          foregroundColor:
                              Theme.of(context).colorScheme.tertiary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
    );
  }
}
