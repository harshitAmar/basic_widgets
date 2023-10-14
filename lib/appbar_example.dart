import 'package:flutter/material.dart';


class AppbarExample extends StatelessWidget {
  const AppbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        elevation: 8,
        title: const Text('Weather App',),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
              // You can navigate to a search screen or show a search bar in the app.
              // For simplicity, let's print a message for now.
              print('Search button pressed');
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
              // You can navigate to a settings screen.
              // For simplicity, let's print a message for now.
              print('Settings button pressed');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Weather App!'),
      ),
    );
  }
}
