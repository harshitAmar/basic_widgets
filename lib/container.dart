import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Properties Example'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16.0),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.red, width: 2.0),
            shape: BoxShape.rectangle,
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
            child: Center(
              child: Transform.rotate(
                angle: 0.2,
                child: const Text(
                  'Container Example',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
