import 'package:appsignup/register_page.dart';

import 'package:flutter/material.dart';

import 'bgimage_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final usercontroller = TextEditingController();
  // final paawordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool isVisible = true;

  String gmail = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BgImagePage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Card(
                color: Colors.white.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter your gmail",
                              hintStyle: TextStyle(color: Colors.black),
                              label: Text(
                                "Gmail",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                              suffix: Icon(Icons.mail, color: Colors.white),
                            ),
                            validator: (String? value) {
                              if (value!.contains("@")) {
                                return "Please Enter a valid Email";
                              } else {}
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: isVisible ? true : false,
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              hintStyle: const TextStyle(color: Colors.black),
                              label: const Text(
                                "Password",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold),
                              ),
                              suffix: IconButton(
                                color: Colors.white,
                                icon: isVisible
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                              ),
                            ),
                            validator: (String? value) {
                              if (value!.length < 6) {
                                return "Enter six number";
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.pushNamed(context, "/loginp");
                              } 
                            },
                            child: const Text("Login")),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Register",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
