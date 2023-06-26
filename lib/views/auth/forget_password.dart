import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/login'),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Forget Password", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'))
                      ])
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(label: Center(
                        child: Text("Email"),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 40, right: 40),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/enter-code'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            minimumSize: const Size.fromHeight(40)
                        ),
                        child: const Text('Next', style: TextStyle(fontFamily: "Montserrat", fontSize: 18))),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
