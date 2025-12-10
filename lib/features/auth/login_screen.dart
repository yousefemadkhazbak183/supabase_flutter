import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
