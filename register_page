import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String subcategory = '';

  void _submit() async {
    if (name == '' || email == '' || password == '' || confirmPassword == '' || subcategory == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter all fields'),
        ),
      );
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Passwords do not match'),
        ),
      );
      return;
    }

    var url = 'https://your-api-url/register';
    var body = {
      'name': name,
      'email': email,
      'password': password,
      'subcategory': subcategory,
    };

    var response = await http.post(url, body: body);
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registered successfully'),
        ),
      );
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Something went wrong'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Center(
          child: Column(
            children: [
          TextFormField(
          decoration: InputDecoration(
          labelText: 'Name',
          ),
          onChanged: (value) {
            name = value;
          },
        ),
        if (name == '')
    Text(
      'Please enter your name',
      style: TextStyle(color: Colors.red),
    ),
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Email',
    ),
    onChanged: (value) {
    email = value;
    },
    ),
    if (email == '')
    Text(
    'Please enter your email',
    style: TextStyle(color: Colors.red),
    ),
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Password',
    ),
    obscureText: true,
    onChanged: (value) {
    password = value;
    },
    ),
    if (password == '')
    Text(
    'Please enter your password',
    style: TextStyle(color: Colors.red),
    ),
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Confirm Password',
    ),
    obscureText: true,
    onChanged: (value) {
    confirmPassword = value;
    },
    ),
    if (confirmPassword == '')
    Text(
    'Please confirm your password',
    style: TextStyle(color: Colors.red),
    ),
    DropdownButton(
    value: subcategory,
    items: [
    DropdownMenuItem(
    child: Text('Select a Subcategory'),
    value: '',
    ),
    DropdownMenuItem(
    child: Text('Subcategory 1'),
    value: 'subcategory1',
    ),
    DropdownMenuItem(
    child: Text('Subcategory 2'),
    value: 'subcategory2',
    ),
    ],
    onChanged: (value) {
    subcategory = value;
    },
    ),
    ElevatedButton(
    onPressed: _submit,
    child: Text('Register
