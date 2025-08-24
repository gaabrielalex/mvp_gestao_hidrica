import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/router/app_router.dart'; // Assuming app_router.dart is created
import 'package:myapp/core/theme/theme.dart' as AppTheme; // Assuming theme.dart is created
import 'package:myapp/features/irrigacao/data/in_memory/irrigacao_in_memory_repo.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // We are wrapping the app with ProviderScope for Riverpod state management
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: appRouter, // Assuming appRouter instance is available
        theme: AppTheme.lightTheme, // Assuming AppTheme.lightTheme is defined
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
