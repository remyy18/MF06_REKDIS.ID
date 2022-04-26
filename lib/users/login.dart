import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Selamat Datang!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('assets/images/login.png'),
          const CupertinoTextField(),
          const CupertinoTextField(),
          TextButton(
            onPressed: () {},
            child: const Text('Lupa Password'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Login'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              primary: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 35.0,
                vertical: 10.0,
              ),
              shape: const StadiumBorder(),
            ),
          ),
          const Text('Belum punya akun? Sign Up'),
        ],
      ),
    );
  }
}
