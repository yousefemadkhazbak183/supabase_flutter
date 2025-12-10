import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:subabase_flutter/features/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signIn() async {
    try {
      await Supabase.instance.client.auth.signInWithPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      log("signIn is success");
      Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
      );
    } on Exception catch (e) {
      log('Error is ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
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
                  signIn();
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
