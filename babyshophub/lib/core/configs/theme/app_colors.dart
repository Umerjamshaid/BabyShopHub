import 'package:flutter/material.dart';

class AppColors {
  // Primary palette - Golden yellow with dark navy
  static const Color primary = Color(0xFFFFC107);           // Golden yellow
  static const Color primaryLight = Color(0xFFFFD54F);      // Lighter golden
  static const Color primaryDark = Color(0xFFFF8F00);       // Darker golden

  // Background hierarchy (dark theme)
  static const Color primaryBackground = Color(0xFF0F0F23);  // Deepest dark
  static const Color secondaryBackground = Color(0xFF1E1E2C); // Card background
  static const Color tertiaryBackground = Color(0xFF2D2D44);  // Elevated surfaces
  static const Color surfaceBackground = Color(0xFF3A3A55);   // Input fields, etc.

  // Accent colors
  static const Color accent = Color(0xFF64B5F6);            // Soft blue accent
  static const Color accentSecondary = Color(0xFF81C784);    // Soft green accent

  // Text colors
  static const Color textPrimary = Color(0xFFFFFFFF);       // Pure white
  static const Color textSecondary = Color(0xFFB0B0C3);     // Muted text
  static const Color textTertiary = Color(0xFF6B6B7D);      // Very muted

  // Semantic colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFFF5252);
  static const Color warning = Color(0xFFFF9800);
  static const Color info = Color(0xFF2196F3);

  // Utility colors
  static const Color border = Color(0xFF3A3A55);
  static const Color divider = Color(0xFF2D2D44);
  static const Color shadow = Color(0xFF000000);

  // Button specific
  static const Color buttonText = Color(0xFF000000);        // Black text on yellow buttons
}