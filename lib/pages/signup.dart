import 'package:flutter/material.dart';
import 'package:hackathon/config/appstrings.dart';

class SignUp extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 38),
              Text(
                AppStrings.agrosnap,
                style: TextStyle(
                  fontSize: 25.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 38),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 122,
                    child: Image.asset(
                      "assets/images/farmer.jpg",
                      width: 100,
                      height: 122,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 38),
              //  SizedBox(height: 38),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 38),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      hintText: "Enter Your Phone Number",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {
                  if (usernameController.text.isEmpty)
                    _showErrorDialog(context, "Username not specified");
                  else if (emailController.text.isEmpty) {
                    _showErrorDialog(context, 'Email not defined');
                  } else if (phoneNumberController.text.isEmpty ||
                      phoneNumberController.text.length != 10) {
                    _showErrorDialog(
                        context, "Please enter correct mobile number");
                  } else if (passwordController.text.isEmpty) {
                    _showErrorDialog(context, "Password not specified");
                  } else {
                    Navigator.of(context).pushReplacementNamed('/mainpage');
                  }
                },
                child: Text("Sign Up"),
              ),
              Text('Or sign Up with'),
              SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.0),
                      ),
                      onPressed: () {
                        print("Facebook icon is clicked");
                      },
                      child: Image.asset(
                        'assets/images/facebook.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.0),
                      ),
                      onPressed: () {
                        print("Google icon is clicked");
                      },
                      child: Image.asset(
                        'assets/images/search.png',
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
        title: Text('Error'),
        content: Text(errorMessage),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
