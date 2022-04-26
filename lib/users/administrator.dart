import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rekdis/users/landing.dart';

class Administrator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Text(
              'Rekam Medis Harapan!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: Image.asset('assets/images/login.png')),
            const CupertinoTextField(
              prefix: Icon(Icons.mail_outline, color: Colors.blue),
              suffix: Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              style: TextStyle(color: Colors.black),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            const CupertinoTextField(
              obscureText: true,
              prefix: Icon(Icons.lock, color: Colors.blue),
              suffix: Icon(
                Icons.visibility_off,
                color: Colors.blue,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              style: TextStyle(color: Colors.black),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
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
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LandingPage(),
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
