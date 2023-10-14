import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppbarExample extends StatefulWidget {
  const AppbarExample({super.key});

  @override
  State<AppbarExample> createState() => _AppbarExampleState();
}

class _AppbarExampleState extends State<AppbarExample> {
  int currentIndex = 0;
  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      onEndDrawerChanged: (value) {
        Fluttertoast.showToast(msg: "$value");
      },
      key: key,
      endDrawer: Drawer(
        child: Container(),
      ),
      // bottomSheet: Container(
      //   height: 200,
      //   color: Colors.deepOrange,
      //   width: 200,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 34,
        currentIndex: currentIndex,
        selectedIconTheme: const IconThemeData(color: Colors.green, shadows: [
          BoxShadow(
            offset: Offset(0, 1),
          )
        ]),
        unselectedItemColor: Colors.blue,
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        selectedLabelStyle: const TextStyle(),
        elevation: 15,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: "label",
              tooltip: "This is tooltip",
              activeIcon: Icon(Icons.safety_check)),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: ""),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 50,
        // flexibleSpace: Container(
        //   height: 100,
        //   color: Colors.black,
        // ),
        // bottom: PreferredSize(
        //   preferredSize: const Size(200, 100),
        //   child: Container(),
        // ),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        elevation: 10,
        title: GestureDetector(
          onTap: () {
            key.currentState!.openEndDrawer();
          },
          child: const Text(
            'Weather App',
            style: TextStyle(fontSize: 15),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
              // You can navigate to a search screen or show a search bar in the app.
              // For simplicity, let's print a message for now.
              if (kDebugMode) {
                print('Search button pressed');
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
              // You can navigate to a settings screen.
              // For simplicity, let's print a message for now.
              if (kDebugMode) {
                print('Settings button pressed');
              }
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      extendBody: false,
      body: const Align(
          alignment: Alignment.bottomRight,
          child: Text('Welcome to the Weather App!')),
    );
  }
}
