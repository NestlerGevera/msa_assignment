import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
              color: Theme.of(context).colorScheme.background, fontSize: 24),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search,
                color: Theme.of(context).colorScheme.background),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          NameSection(name: 'Shaina Buenaagua'),
          SizedBox(height: 30),
          SettingsSection(
            items: [
              SettingsItem(
                icon: Icons.wifi,
                title: 'Connections',
                subtitle: 'Wi-Fi · Bluetooth · Airplane mode',
              ),
              SettingsItem(
                icon: Icons.volume_up,
                title: 'Sounds and vibration',
                subtitle: 'Sound mode · Ringtone',
              ),
              SettingsItem(
                icon: Icons.notifications,
                title: 'Notifications',
                subtitle: 'Status bar · Do not disturb',
              ),
              SettingsItem(
                icon: Icons.display_settings,
                title: 'Display',
                subtitle: 'Brightness · Eye comfort shield · Navigation bar',
              ),
              SettingsItem(
                icon: Icons.wallpaper,
                title: 'Wallpaper and style',
                subtitle: 'Wallpapers · Color palette',
              ),
              SettingsItem(
                icon: Icons.palette,
                title: 'Themes',
                subtitle: 'Themes · Wallpapers · Icons',
              ),
              SettingsItem(
                icon: Icons.home,
                title: 'Home screen',
                subtitle: 'Layout · App icon badges',
              ),
              SettingsItem(
                icon: Icons.lock,
                title: 'Lock screen',
                subtitle: 'Screen lock type',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NameSection extends StatelessWidget {
  final String name;

  const NameSection({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).colorScheme.background,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final List<SettingsItem> items;

  const SettingsSection({required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items,
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const SettingsItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Icon(icon, color: Theme.of(context).colorScheme.background),
          ),
          title: Text(
            title,
            style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
                color: Theme.of(context).colorScheme.background, fontSize: 13),
          ),
          onTap: () {},
        ),
        Divider(color: Theme.of(context).colorScheme.background),
      ],
    );
  }
}
