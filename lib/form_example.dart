import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  String ?_selectedGender ;
  bool _subscribeToNewsletter = false;

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
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  if(value!=null) {
                    _name = value;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if(value!=null)
                  if (value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  if(value!=null) {
                    _email = value;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if(value!=null)
                  if (value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                onSaved: (value) {
                  if(value!=null) {
                    _password = value;
                  }
                },
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Gender'),
                value: _selectedGender,
                onChanged: (newValue) {
                  if(newValue!=null) {
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
                      if(value!=null) {
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
                    print('Name: $_name');
                    print('Email: $_email');
                    print('Password: $_password');
                    print('Gender: $_selectedGender');
                    print('Subscribe to Newsletter: $_subscribeToNewsletter');
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
