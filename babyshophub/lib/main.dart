// main.dart
import 'package:babyshophub/presentation/splash/bloc/splash_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/splash/pages/splash_screen.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appstarted(),
      child: MaterialApp(
        title: 'Babby Shop Hub',
        theme: ThemeData(
          primaryColor: Colors.grey[900],
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[900],
            foregroundColor: Colors.white,
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.grey[900],
            secondary: Colors.grey[700],
            surface: Colors.white,
            onPrimary: Colors.white,
            onSecondary: Colors.black,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.black),
            bodyMedium: TextStyle(color: Colors.black87),
            titleLarge: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.grey[900],
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
