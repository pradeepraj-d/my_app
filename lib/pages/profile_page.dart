import 'package:flutter/material.dart';
import 'package:my_app/core/notifier.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage(
                'images/man.jpg',
              ),
              radius: 60,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My App'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('info@dprj.com'),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('www.dprj.com'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkMode.value = !isDarkMode.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkMode,
          builder: (context, isDark, child) {
            if (isDark) {
              return const Icon(Icons.dark_mode);
            }
            else{
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
