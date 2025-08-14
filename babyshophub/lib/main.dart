import 'package:babyshophub/common/helper/colors/app_colors.dart';
import 'package:babyshophub/presentation/splash/bloc/splash_cubit.dart';
import 'package:babyshophub/presentation/splash/pages/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appstarted(),
      child: MaterialApp(
        title: 'Baby Shop Hub',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.accent,
          scaffoldBackgroundColor: AppColors.textPrimary,

          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.accent,
            foregroundColor: AppColors.textPrimary,
            elevation: 2,
            titleTextStyle: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),

          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.accent,
            primary: AppColors.accent,
            secondary: AppColors.black,
            surface: AppColors.textPrimary,
            onPrimary: AppColors.black,
          ),

          textTheme: GoogleFonts.poppinsTextTheme().copyWith(
            bodyMedium: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.black.withOpacity(0.7),
            ),
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accent,
              foregroundColor: AppColors.black,
              textStyle: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 24,
              ),
            ),
          ),

          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: AppColors.textPrimary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColors.accent,
                width: 2,
              ),
            ),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
