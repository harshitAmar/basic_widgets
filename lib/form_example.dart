import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final String _name = '';
  String _email = '';
  String _password = '';
  String? _selectedGender;
  bool _subscribeToNewsletter = false;
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    nameController.addListener(() {
      print(nameController.text);
      print(_password);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Example"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Name: ${nameController.text}"),
              Text("Email: $_email"),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                controller: nameController,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  counter: Text("data"),
                  hintText: "Enter your email",
                  suffix: Text("data"),
                  helperText: "This is helper text",
                  errorText: "This is error text",
                  helperStyle: TextStyle(),

                  labelStyle: TextStyle(),
                  // suffixIcon: Text("icons"),
                  // prefix: Text("prefix"),
                  // prefixIcon: Text("icon"),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                maxLength: 10,
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Please enter your email address';
                    }
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    _email = value;
                    setState(() {});
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Please enter a password';
                    }
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    _password = value;
                  }
                },
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Gender'),
                value: _selectedGender,
                onChanged: (newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedGender = newValue;
                    });
                  }
                },
                items: ['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Row(
                children: [
                  Checkbox(
                    value: _subscribeToNewsletter,
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _subscribeToNewsletter = value;
                        });
                      }
                    },
                  ),
                  const Text('Subscribe to Newsletter'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform form submission here
                    if (kDebugMode) {
                      print(
                          'Name: $_name\nEmail: $_email\nPassword: $_password\nGender: $_selectedGender\nSubscribe to Newsletter: $_subscribeToNewsletter');
                    }
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
