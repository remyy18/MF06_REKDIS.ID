import 'package:flutter/material.dart';
import 'package:rekdis/users/login.dart';
import 'package:rekdis/users/signup.dart';
import 'package:rekdis/users/administrator.dart';

class Awal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset('assets/images/welcome.png'),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Selamat Datang',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Rekdis : Layanan Rekam Medis Puskesmas',
                      style:
                          TextStyle(color: Color.fromARGB(255, 118, 118, 118)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
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
                      const SizedBox(
                        width: 8.0,
                      ),
                      OutlinedButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        ),
                        child: const Text('Sign Up'),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32.0,
                            vertical: 10.0,
                          ),
                          shape: const StadiumBorder(),
                          side: const BorderSide(width: 2.0),
                        ),
                      ),
                    ],
                  ),
                  const Text('or login as administrator'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Administrator(),
                          ),
                        ),
                        child: const Text('Administrator'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 35.0,
                            vertical: 10.0,
                          ),
                          shape: const StadiumBorder(),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
