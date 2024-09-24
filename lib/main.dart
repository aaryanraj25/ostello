import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/features/dashboard/screen/dashboard_screen.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ostello',
      theme: AppTheme.lightTheme,
      home: DashboardScreen(),
    );
  }
}