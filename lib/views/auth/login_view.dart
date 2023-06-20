import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 150),
                child: Column(children: [
                  Image.asset(
                    'assets/logo/logo_white.png',
                  )
                ])),
            Container(
              padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
              child: Column(children: [
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Email or Username'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                ElevatedButton(
                    onPressed: () {/* Add login logic here */},
                    child: Text('Login'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black))),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/register'),
                  child: const Text('Register', style: TextStyle(color: Colors.black)),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
