import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _emailTextField(context),
            const SizedBox(height: 16),
            _passwordTextField(context),
            const SizedBox(height: 20),
            _LoginButton(context),
          ],
        ),
      ),
    );
  }


  Widget _signinText(BuildContext context) {
    return const Text('Sign In',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),);
  }

  Widget _emailTextField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        hintText: 'Enter your email',
        prefixIcon: Icon(Icons.email),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _passwordTextField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        hintText: 'Enter your password',
        prefixIcon: Icon(Icons.lock),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: true,
    );
  }

  Widget _LoginButton(BuildContext context) {
    return ba
  }

}
