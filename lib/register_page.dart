import 'package:appsignup/login_page.dart';
import 'package:flutter/material.dart';

import 'bgimage_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register Page")),
      body: Stack(fit: StackFit.expand, children: [
        const BgImagePage(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Card(
              color: Colors.purple.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter Your Full Name",
                              label: Text(
                                "Name",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter Your Gmail",
                              label: Text("Gmail",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "Enter Your Password",
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
