import 'package:flutter/material.dart';


class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          title: const Text('Text Style Example'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Default Text',
              ),
              Text(
                'Custom Text Style',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.2,
                  wordSpacing: 2.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dotted,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
       
    );
  }
}
