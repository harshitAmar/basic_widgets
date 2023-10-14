import 'package:flutter/material.dart';



class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          title: const Text('Button Types Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Action to perform when the button is pressed.
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                  padding: const EdgeInsets.all(16.0), // Padding
                ),
                child: const Text('Elevated Button'),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  // Action to perform when the button is pressed.
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green, padding: const EdgeInsets.all(16.0), // Padding
                ),
                child: const Text('Text Button'),
              ),
              const SizedBox(height: 20.0),
              OutlinedButton(
                onPressed: () {
                  // Action to perform when the button is pressed.
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red, padding: const EdgeInsets.all(16.0), // Padding
                ),
                child: const Text('Outlined Button'),
              ),
              const SizedBox(height: 20.0),
              IconButton(
                onPressed: () {
                  // Action to perform when the button is pressed.
                },
                icon: const Icon(Icons.star), // Icon
                color: Colors.yellow, // Icon color
                iconSize: 48.0, // Icon size
              ),
            ],
          ),
        ),

    );
  }
}
