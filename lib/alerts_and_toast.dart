import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertsAndToastExample extends StatelessWidget {
  const AlertsAndToastExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Notifications Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              child: const Text('Show Alert Dialog'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _showSnackbar(context);
              },
              child: const Text('Show Snackbar'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _showToast();
              },
              child: const Text('Show Toast'),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Alert Dialog'),
          content: const Text('This is an alert message.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        action: SnackBarAction(label: "Close", onPressed: () {}),
        content: const Text('This is a snackbar message.'),
        dismissDirection: DismissDirection.endToStart,
      ),
    );
  }

  void _showToast() {
    Fluttertoast.showToast(
      msg: 'This is a toast message.',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
    );
  }
}
