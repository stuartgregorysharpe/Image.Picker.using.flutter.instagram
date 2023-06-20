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
                      const InputDecoration(label: Center(
                        child: Text('Email or Username', style: TextStyle(fontFamily: "Radley", fontSize: 18, color: Colors.black),),
                      )),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Center(
                    child: Text('Password', style: TextStyle(fontFamily: "Radley", fontSize: 18, color: Colors.black)),
                  )),
                  obscureText: true,
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 40, right: 40),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {/* Add login logic here */},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          minimumSize: const Size.fromHeight(40)
                      ),
                      child: Text('Sign in', style: TextStyle(fontFamily: "Radley", fontSize: 18))
                  ),
                  Text('Forget Password?', style: TextStyle(fontFamily: "Radley", fontSize: 16))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 40, right: 40),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/register'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          minimumSize: const Size.fromHeight(40)
                      ),
                      child: const Text('Sign up', style: TextStyle(fontFamily: "Radley", fontSize: 18))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
