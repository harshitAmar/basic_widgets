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
        crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.yellow,
                ),
                Positioned(
                  top: 20,
                  bottom: 0,
                  right: -10,
                  width: 100,
                  child: Container(
                    width: 120.0,
                    height: 50.0,
                    color: Colors.deepOrange,
                    child: const Center(child: Text('Stack')),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.orange,
                  child: const Center(child: Text('Stack')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
