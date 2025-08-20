import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    // Color Scheme
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      surface: AppColors.secondaryBackground,
      onPrimary: AppColors.buttonText,
      onSecondary: Colors.white,
      onSurface: AppColors.textPrimary,
    ),

    // Core theme properties
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primaryBackground,
    brightness: Brightness.dark,
    fontFamily: 'CircularStd',

    // App Bar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.textPrimary),
      titleTextStyle: TextStyle(
        color: AppColors.textPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),

    // Text Theme
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.textTertiary,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.buttonText, // For text on primary buttons
      ),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceBackground,
      hintStyle: const TextStyle(
        color: AppColors.textSecondary,
        fontWeight: FontWeight.w400,
      ),
      contentPadding: const EdgeInsets.all(16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.border, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.error, width: 2),
      ),
    ),

    // Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.buttonText,
        elevation: 3,
        shadowColor: AppColors.shadow.withOpacity(0.3),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary, width: 1.5),
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: AppColors.secondaryBackground,
      elevation: 4,
      shadowColor: AppColors.shadow.withOpacity(0.2),
      margin: const EdgeInsets.all(8),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),

    // Dialog Theme
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.tertiaryBackground,
      elevation: 8,
      shadowColor: AppColors.shadow.withOpacity(0.3),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      titleTextStyle: const TextStyle(
        color: AppColors.textPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      contentTextStyle: const TextStyle(
        color: AppColors.textSecondary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),

    // SnackBar Theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.tertiaryBackground,
      contentTextStyle: const TextStyle(
        color: AppColors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      actionTextColor: AppColors.primary,
      behavior: SnackBarBehavior.floating,
      elevation: 6,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),

    // Bottom Sheet Theme
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.secondaryBackground,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 1,
      space: 1,
    ),

    // Progress Indicator Theme
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary,
      circularTrackColor: AppColors.surfaceBackground,
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.surfaceBackground,
      labelStyle: const TextStyle(
        color: AppColors.textPrimary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      secondaryLabelStyle: const TextStyle(
        color: AppColors.buttonText,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      secondarySelectedColor: AppColors.primary,
      selectedColor: AppColors.primary,
      brightness: Brightness.dark,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // List Tile Theme
    listTileTheme: const ListTileThemeData(
      tileColor: AppColors.secondaryBackground,
      textColor: AppColors.textPrimary,
      iconColor: AppColors.textSecondary,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    ),

    // Switch Theme
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return AppColors.textSecondary;
      }),
      trackColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary.withOpacity(0.5);
        }
        return AppColors.surfaceBackground;
      }),
    ),

    // Checkbox Theme
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(AppColors.buttonText),
      side: const BorderSide(color: AppColors.border, width: 2),
    ),
  );

  // Additional custom theme extensions
  static final darkTheme = appTheme.copyWith(
    extensions: <ThemeExtension<dynamic>>[
      CustomColors(
        cardBackground: AppColors.secondaryBackground,
        successBackground: AppColors.success.withOpacity(0.15),
        errorBackground: AppColors.error.withOpacity(0.15),
        infoBackground: AppColors.info.withOpacity(0.15),
        warningBackground: AppColors.warning.withOpacity(0.15),
      ),
    ],
  );
}

// Enhanced Custom theme extension
class CustomColors extends ThemeExtension<CustomColors> {
  final Color cardBackground;
  final Color successBackground;
  final Color errorBackground;
  final Color infoBackground;
  final Color warningBackground;

  const CustomColors({
    required this.cardBackground,
    required this.successBackground,
    required this.errorBackground,
    required this.infoBackground,
    required this.warningBackground,
  });

  @override
  ThemeExtension<CustomColors> copyWith({
    Color? cardBackground,
    Color? successBackground,
    Color? errorBackground,
    Color? infoBackground,
    Color? warningBackground,
  }) {
    return CustomColors(
      cardBackground: cardBackground ?? this.cardBackground,
      successBackground: successBackground ?? this.successBackground,
      errorBackground: errorBackground ?? this.errorBackground,
      infoBackground: infoBackground ?? this.infoBackground,
      warningBackground: warningBackground ?? this.warningBackground,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
    ThemeExtension<CustomColors>? other,
    double t,
  ) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      successBackground: Color.lerp(
        successBackground,
        other.successBackground,
        t,
      )!,
      errorBackground: Color.lerp(errorBackground, other.errorBackground, t)!,
      infoBackground: Color.lerp(infoBackground, other.infoBackground, t)!,
      warningBackground: Color.lerp(
        warningBackground,
        other.warningBackground,
        t,
      )!,
    );
  }
}
