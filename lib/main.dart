import 'package:flutter/material.dart';
import 'package:subabase_flutter/core/constants/supabase_constans.dart';
import 'package:subabase_flutter/features/auth/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SupabaseConstans.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: RegisterScreen(),
    );
  }
}
