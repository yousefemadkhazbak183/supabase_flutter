import 'package:flutter/material.dart';
import 'package:subabase_flutter/features/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                controller: TextEditingController(),
                decoration: InputDecoration(label: Text('Email')),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(label: Text('Password')),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
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
