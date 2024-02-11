//jai shree ram
// ignore_for_file: must_be_immutable

import 'package:agrosnap/pages/home_admin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 38),
              RichText(
          text: TextSpan(
            text: 'Agro',
            style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 30, fontWeight: FontWeight.bold)),
            children:  <TextSpan>[
              TextSpan(text: 'Snap', style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
              
              const SizedBox(height: 30),
              Image.asset('assets/Logo.png', width: 200, height: 200,),
              Text(
                "Log in to continue",
                style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 20, fontWeight: FontWeight.w600))),
              const SizedBox(height: 38),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      hintText: "Username",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                  },
                  child: const Text('Forgot Password?'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (usernameController.text.isEmpty) {
                    _showErrorDialog(context, 'Username not defined');
                  } else if (passwordController.text.isEmpty) {
                    _showErrorDialog(context, 'Password not defined');
                  } else {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeAdmin()));
                  }
                },
                child: const Text("Log in"),
              ),
              const Text('Or sign in with'),
              const SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.0),
                      ),
                      onPressed: () {
                      },
                      child: Image.asset(
                        'assets/Facebook.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.0),
                      ),
                      onPressed: () {
                      },
                      child: Image.asset(
                        'assets/Search.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                },
                child: const Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showErrorDialog(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(errorMessage),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
