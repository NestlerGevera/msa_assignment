import 'package:flutter/material.dart';
import 'homepage.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.home, color: Theme.of(context).colorScheme.background),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: Text('Profile',
            style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontFamily: 'DeadheadRough')),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit,
                color: Theme.of(context).colorScheme.background),
            onPressed: () {
              // Navigate to edit profile page
            },
          ),
          IconButton(
            icon: Icon(Icons.settings,
                color: Theme.of(context).colorScheme.background),
            onPressed: () {
              Navigator.pushNamed(context, '/settingspage');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Info Header
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('lib/assets/arcris.jpg'),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Arcris Silang',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'arcris.silang@ncst.edu.ph',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.background),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 32),

                // User Information Section
                Text(
                  'User Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                _buildInfoRow('Phone', '+1 234 IMISS YOU NA'),
                _buildInfoRow('Address', 'Secret XD anonimous yarn'),
                _buildInfoRow('Date of Birth', 'Secret daw sabi ni Sir'),
                _buildInfoRow('Gender', 'Male'),

                SizedBox(height: 32),

                // Edit Profile Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to Edit Profile screen
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Theme.of(context).colorScheme.background,
                    ),
                    child: Text('Edit Profile',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.tertiary)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          Text(
            content,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
