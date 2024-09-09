import 'package:flutter/material.dart';

import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle_rounded,
                    size: 100.0,
                    // color: Colors.white,
                  ),
                  const SizedBox(height: 60.0),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        label: Text(
                          'Username',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xFFD3EFD8)),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0xFFD3EFD8),
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: const Text('Login'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 45)),
                  ),
                ],
              ),
            )));
  }
}
