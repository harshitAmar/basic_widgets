import 'package:basic_widgets/alerts_and_toast.dart';
import 'package:basic_widgets/appbar_example.dart';
import 'package:basic_widgets/buttons_example.dart';
import 'package:basic_widgets/card_example.dart';
import 'package:basic_widgets/container.dart';
import 'package:basic_widgets/flex.dart';
import 'package:basic_widgets/form_example.dart';
import 'package:basic_widgets/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContainerExample()));
                },
                title: const Text("Container")),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TextExample()));
                },
                title: const Text("Text")),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyLayoutExample()));
                },
                title: const Text("Row and Columns")),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyForm()));
                },
                title: const Text("Form")),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ButtonsExample()));
                },
                title: const Text("Buttons")),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AppbarExample()));
                },
                title: const Text("Appbar")),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CardExample()));
                },
                title: const Text("Card Example")),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlertsAndToastExample()));
                },
                title: const Text("Alerts And Toast Example")),
          ],
        ));
  }
}
