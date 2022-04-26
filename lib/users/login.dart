import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Text(
              'Selamat Datang!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: Image.asset('assets/images/login.png')),
            const CupertinoTextField(),
            const CupertinoTextField(),
            Row(
              children: [
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text('Lupa Password'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
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
            const SizedBox(height: 16.0),
            const Text('Belum punya akun? Sign Up'),
          ],
        ),
      ),
    );
  }
}
