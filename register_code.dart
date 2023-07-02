import 'package:flutter/material.dart';

class CodeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Please enter the code that was sent to your email address.',
          style: TextStyle(fontSize: 16.0),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Code',
          ),
        ),
        TextButton(
          onPressed: () {
            // TODO: Send the code to the backend API to verify the user.
          },
          child: Text('Verify Code'),
        ),
      ],
    );
  }
}
