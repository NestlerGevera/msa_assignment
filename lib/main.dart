import 'package:flutter/material.dart';
import 'package:msa_assignment/pages/bookingpage.dart';
import 'package:msa_assignment/pages/homepage.dart';
import 'package:msa_assignment/pages/index.dart';
import 'package:msa_assignment/pages/login_page.dart';
import 'package:msa_assignment/pages/signup.dart';
import 'package:msa_assignment/pages/starting_page.dart';
import 'package:msa_assignment/pages/user_profile.dart';
import 'package:msa_assignment/pages/loginpage.dart';
import 'package:msa_assignment/pages/search.dart';
import 'package:msa_assignment/pages/userprofile.dart';
import 'package:msa_assignment/pages/favorites.dart';
import 'package:msa_assignment/pages/settings.dart';
import 'package:msa_assignment/theme/themeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GigaCuts Barberia',
      theme: Provider.of<ThemeProvider>(context).themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => const IndexPage(),
        '/loginpage': (context) => const Login(),
        '/signup': (context) => const SignUpPage(),
        '/homepage': (context) => const HomePage(),
        '/searchpage': (context) => SearchPage(),
        '/userprofile': (context) => const UserProfilePage(),
        '/favoritespage': (context) => const FavoritesPage(
              title: 'GigaCuts Barberia',
            ),
        '/bookingpage': (context) => const Bookingpage(),
        '/settingspage': (context) => const SettingsPage(),
        '/starting_page': (context) => const StartingPage(),
        '/login_page': (context) => const LoginPage(),
        '/user_profile': (context) => const UserProfile(),
      },
    );
  }
}
