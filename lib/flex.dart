import 'package:flutter/material.dart';

 
class MyLayoutExample extends StatelessWidget {
  const MyLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100.0,
            color: Colors.yellow,
            child: const Center(child: Text('Column')),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.star),
            title: Text('ListTile in Column'),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
                child: const Center(child: Text('Row')),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: const Center(child: Text('Row')),
              ),
            ],
          ),
          const Divider(),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                color: Colors.yellow,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.orange,
                child: const Center(child: Text('Stack')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
