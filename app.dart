// app.dart
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SamzyApp extends StatelessWidget {
  const SamzyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samzy Community',
      theme: _buildTheme(),
      home: const LoginScreen(),
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF0052CC),      // brand-primary
        onPrimary: Colors.white,
        secondary: Color(0xFF10B981),    // brand-success
        onSecondary: Colors.white,
        error: Color(0xFFEF4444),        // brand-danger
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Color(0xFF0F172A),    // neutral-900
        background: Color(0xFFF8FAFC),   // neutral-50
        onBackground: Color(0xFF0F172A),
      ),
      scaffoldBackgroundColor: const Color(0xFFF8FAFC),
      fontFamily: 'Inter',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0052CC),
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)), // neutral-200
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF0052CC), width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
      ),
    );
  }
}