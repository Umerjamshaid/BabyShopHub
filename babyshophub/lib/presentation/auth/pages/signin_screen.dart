import 'package:babyshophub/common/helper/navigator/app_navigater.dart';
import 'package:babyshophub/common/widgets/button/basic_app_button.dart';
import 'package:babyshophub/data/auth/models/user_signin_req.dart';
import 'package:babyshophub/presentation/auth/pages/enter_password.dart';
import 'package:babyshophub/presentation/auth/pages/forgot_password.dart';
import 'package:babyshophub/presentation/auth/pages/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailCon = TextEditingController();

  @override
  void dispose() {
    _emailCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _emailTextField(context),
            const SizedBox(height: 20),
            _continueButton(),
            const SizedBox(height: 20),
            _createAccount(context),
            const SizedBox(height: 20),
            _forgotpassword(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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

  Widget _continueButton() {
    return Builder(
      builder: (context) {
        return BasicAppButton(
          title: 'Continue',
          onPressed: () {
            // Handle continue action
            AppNavigater.push(
              context,
              EnterPasswordScreen(
                signinReq: UserSigninReq(email: _emailCon.text),
              ),
            );
          },
        );
      },
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
            text: 'Create Account',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigater.push(context, const SignupScreen());
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
                AppNavigater.push(context, ForgotPassword());
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
