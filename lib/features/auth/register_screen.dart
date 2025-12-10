import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:subabase_flutter/features/auth/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> register() async {
    try {
      await Supabase.instance.client.auth.signUp(
        email: _emailController.text,
        password: _passwordController.text,
      );
      log("register is success");
      Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
      );
    } on Exception catch (e) {
      log('Error is ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(label: Text('Email')),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(label: Text('Password')),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  register();
                },
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
