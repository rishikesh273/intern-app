import 'package:flutter/material.dart';
import 'package:intern1/pages/dashboard_page.dart';


class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome Intern', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
              TextField(controller: passwordController, obscureText: true, decoration: InputDecoration(labelText: 'Password')),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DashboardPage())),
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}