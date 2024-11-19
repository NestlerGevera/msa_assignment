import 'package:flutter/material.dart';
import 'package:msa_assignment/components/box.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/bg_image.jpg'), fit: BoxFit.cover),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  MyBox(
                    color: Color.fromARGB(150, 207, 207, 207),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            'lib/assets/logoblack.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            '''Nepth Barber Shop is a top-tier barber shop designed to provide an exceptional grooming experience. Tailored for modern customers who value convenience, quality, personalization with effortlessly booking appointments, select preferred barber, and explore a range of premium services.''',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login_page');
                            },
                            child: Text('Start Now!',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
