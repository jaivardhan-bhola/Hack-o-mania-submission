// ignore_for_file: must_be_immutable

import 'package:agrosnap/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SignUp extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  final hivebox = Hive.box('user');
  SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 60),
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
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      "assets/Logo.png",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //  SizedBox(height: 38),
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
                      hintText: "Enter Your Username",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 38),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Email",
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
                    controller: phoneNumberController,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Phone Number",
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
                      hintText: "Enter Your Password",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {
                  if (usernameController.text.isEmpty) {
                    _showErrorDialog(context, "Username not specified");
                  } else if (emailController.text.isEmpty) {
                    _showErrorDialog(context, 'Email not defined');
                  } else if (phoneNumberController.text.isEmpty ||
                      phoneNumberController.text.length != 10) {
                    _showErrorDialog(
                        context, "Please enter correct mobile number");
                  } else if (passwordController.text.isEmpty) {
                    _showErrorDialog(context, "Password not specified");
                  } else {
                    hivebox.put('username', usernameController.text);
                    hivebox.put('email', emailController.text);
                    hivebox.put('phone', phoneNumberController.text);
                    hivebox.put('password', passwordController.text);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 172, 104, 255),
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Sign Up", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))),
              ),
              Text('Or sign Up with', style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold))),
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
