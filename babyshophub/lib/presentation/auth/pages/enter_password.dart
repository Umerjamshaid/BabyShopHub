import 'package:babyshophub/common/bloc/button/button_state_cubit.dart';
import 'package:babyshophub/common/helper/navigator/app_navigater.dart';
import 'package:babyshophub/common/widgets/button/basic_app_button.dart';
import 'package:babyshophub/common/widgets/button/basic_reactive_button.dart';
import 'package:babyshophub/data/auth/models/user_signin_req.dart';
import 'package:babyshophub/domain/auth/usecases/signin.dart';
import 'package:babyshophub/presentation/auth/pages/forgot_password.dart';
import 'package:babyshophub/presentation/auth/pages/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/bloc/button/button_state.dart';

class EnterPasswordScreen extends StatelessWidget {
  final UserSigninReq signinReq;
  EnterPasswordScreen({required this.signinReq, super.key});

  final TextEditingController _passwordCon = TextEditingController();

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
        child: BlocProvider(
          create: (context) => ButtonStateCubit(),
          child: BlocListener<ButtonStateCubit, ButtonState>(
            listener: (context, state) {
              if (state is ButtonFailureState) {
                var snakebar = SnackBar(
                  content: Text(state.errorMessage),
                  behavior: SnackBarBehavior.floating,
                );
                ScaffoldMessenger.of(context).showSnackBar(snakebar);
              }

              if(state is ButtonSuccessState){

              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _signinText(context),
                const SizedBox(height: 20),
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
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  // Widget _emailTextField(BuildContext context) {
  //   return const TextField(
  //     decoration: InputDecoration(
  //       labelText: 'Email',
  //       labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
  //       hintText: 'Enter your email',
  //       prefixIcon: Icon(Icons.email),
  //       filled: true,
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //         borderSide: BorderSide.none,
  //       ),
  //     ),
  //     keyboardType: TextInputType.emailAddress,
  //   );
  // }

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

  Widget _continueButton(BuildContext context) {
    return Builder(
      builder: (context) {
        return BasicReactiveButton(
          title: 'Continue',
          onPressed: () {
            // Handle continue action
            signinReq.password = _passwordCon.text;
            context.read<ButtonStateCubit>().execute(
              usecase: SigninUseCase(),
              params: signinReq,
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
