import 'package:babyshophub/common/helper/navigator/app_navigater.dart';
import 'package:babyshophub/common/widgets/button/basic_app_button.dart';
import 'package:babyshophub/presentation/auth/pages/forgot_password.dart';
import 'package:babyshophub/presentation/auth/pages/gender_and_age_screen.dart';
import 'package:babyshophub/presentation/auth/pages/signin_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../data/auth/models/user_creation_req.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Controllers
  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  void dispose() {
    _firstNameCon.dispose();
    _lastNameCon.dispose();
    _emailCon.dispose();
    _passwordCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _signinText(context),
              const SizedBox(height: 20),
              _firstnameField(context),
              const SizedBox(height: 16),
              _lastnameField(context),
              const SizedBox(height: 16),
              _emailTextField(context),
              const SizedBox(height: 16),
              _passwordTextField(context),
              const SizedBox(height: 20),
              _continueButton(context),
              const SizedBox(height: 20),
              _createAccount(context),
              const SizedBox(height: 20),
              _forgotpassword(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      'Create Account',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstnameField(BuildContext context) {
    return TextField(
      controller: _firstNameCon,
      decoration: const InputDecoration(
        labelText: 'First Name',
        labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
        hintText: 'Enter your First name',
        prefixIcon: Icon(Icons.person),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }

  Widget _lastnameField(BuildContext context) {
    return TextField(
      controller: _lastNameCon,
      decoration: const InputDecoration(
        labelText: 'Last Name',
        labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
        hintText: 'Enter your Last name',
        prefixIcon: Icon(Icons.person),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }

  Widget _emailTextField(BuildContext context) {
    return TextField(
      controller: _emailCon,
      decoration: const InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
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
    return TextField(
      controller: _passwordCon,
      decoration: const InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
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

  // Widget _continueButton() {
  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigater.push(
          context,
          GenderAndAgeSlectionScreen(
            userCreationReq: UserCreationReq(
              firstName: _firstNameCon.text,
              email: _emailCon.text,
              lastName: _lastNameCon.text,
              password: _passwordCon.text,
              gender: null,
              age: '',
            ),
          ),
        );
      },
      title: 'Continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          TextSpan(
            text: 'Login',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigater.pushReplacement(context,  SigninScreen());
              },
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _forgotpassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Forgot Password? ',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          TextSpan(
            text: 'Reset',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigater.push(context,  ForgotPassword());
              },
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
