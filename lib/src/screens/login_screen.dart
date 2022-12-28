import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@exampl.com',
      ),
      validator: (value) {
        if (value == null || !value.contains('@')) {
          return 'Please enter a valid email';
        }
      },
      onSaved: (newValue) {
        email = newValue!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: (value) {
        if (value == null || value.length < 8) {
          return 'Password must be greater than 8 characters';
        }
      },
      onSaved: (newValue) {
        password = newValue!;
      },
    );
  }

  Widget submitButton() {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      child: Text('Submit'),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print('time to post $email and $password to api');
        }
      },
    );
  }
}
