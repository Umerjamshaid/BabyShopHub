import 'package:babyshophub/presentation/splash/bloc/splash_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/splash/pages/splash_screen.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Yellow–Black palette from screenshot
    const yellow = Color(0xFFFFD300);
    const black = Color(0xFF000000);
    const white = Color(0xFFFFFFFF);

    return BlocProvider(
      create: (context) => SplashCubit()..appstarted(),
      child: MaterialApp(
        title: 'Baby Shop Hub',
        theme: ThemeData(
          primaryColor: yellow,
          scaffoldBackgroundColor: white,

          appBarTheme: AppBarTheme(
            backgroundColor: yellow,
            foregroundColor: black,
            elevation: 2,
            titleTextStyle: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),

          colorScheme: ColorScheme.fromSeed(
            seedColor: yellow,
            primary: yellow,
            secondary: black,
            tertiary: white,
            surface: white,
            onPrimary: black,
            onSecondary: white,
            onSurface: black.withOpacity(0.8),
          ).copyWith(surface: white),

          textTheme: TextTheme(
            displayLarge: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: black,
            ),
            titleLarge: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: black,
            ),
            bodyMedium: GoogleFonts.poppins(
              fontSize: 16,
              color: black.withOpacity(0.7),
            ),
            labelLarge: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: black,
            ),
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: yellow,
              foregroundColor: black,
              textStyle: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
          ),

          cardTheme: CardThemeData(
            color: white,
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),

          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: yellow, width: 2),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}

/// Custom Gradient AppBar widget
class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  const GradientAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Text(title),
      actions: actions,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFD300), Color(0xFF000000)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
