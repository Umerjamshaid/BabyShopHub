import 'package:babyshophub/common/bloc/button/button_state_cubit.dart';
import 'package:babyshophub/common/helper/navigator/app_navigater.dart';
import 'package:babyshophub/common/widgets/button/basic_reactive_button.dart';
import 'package:babyshophub/domain/auth/usecases/send_password_reset_email.dart';
import 'package:babyshophub/presentation/auth/pages/password_reset_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/bloc/button/button_state.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocProvider(
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
              AppNavigater.push(context, const PasswordResetEmailPage());
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _signinText(context),
                const SizedBox(height: 20),
                _emailTextField(context),
                const SizedBox(height: 16),
                _continueButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      'Forgot Password',
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
         return BasicReactiveButton(
           title: 'Continue',
           onPressed: () async {
             // Handle continue action
             context.read<ButtonStateCubit>().execute(
               usecase: SendPasswordResetEmailUseCase(),
               params: _emailCon.text,
             );
           },
         );
       },
     );
   }


}
