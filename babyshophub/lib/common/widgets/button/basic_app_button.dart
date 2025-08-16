import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Widget? content;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final bool isOutlined;

  const BasicAppButton({
    required this.onPressed,
    this.title = '',
    this.height,
    this.width,
    this.content,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 12,
    this.isOutlined = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final defaultBg = backgroundColor ?? Theme.of(context).primaryColor;
    final defaultTextColor = textColor ?? Colors.white;

    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isOutlined ? Colors.transparent : defaultBg,
          foregroundColor: defaultTextColor,
          elevation: isOutlined ? 0 : 4,
          shadowColor: isOutlined ? Colors.transparent : defaultBg.withAlpha(4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: isOutlined
                ? BorderSide(color: defaultBg, width: 2)
                : BorderSide.none,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        ),
        child: content ??
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: defaultTextColor,
              ),
            ),
      ),
    );
  }
}
