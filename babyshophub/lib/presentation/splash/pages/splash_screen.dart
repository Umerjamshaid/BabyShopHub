import 'package:babyshophub/common/helper/navigator/app_navigater.dart';
import 'package:babyshophub/presentation/auth/pages/signin_screen.dart';
import 'package:babyshophub/presentation/home/pages/home.dart';
import 'package:babyshophub/presentation/splash/bloc/splash_cubit.dart';
import 'package:babyshophub/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          AppNavigater.pushReplacement(context, SigninScreen());
        }
        if (state is Authenticated)
        {
          // Navigate to the home screen or any other screen
          // For example:
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          // You can replace HomeScreen with your actual home screen widget
          AppNavigater.pushReplacement(context, const HomeScreen());
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'assets/gifs/splash.gif',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
