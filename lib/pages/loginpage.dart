//jai shree ram
import 'package:flutter/material.dart';
import 'package:hackathon/config/appstrings.dart';

class LoginPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                AppStrings.helloWelcome,
                style: TextStyle(
                  fontSize: 25.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 38),
              Text(
                "Log in to continue",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Urbanist',
                  color: Colors.orange,
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
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Username",
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
                    print('Forgot password is Clicked');
                  },
                  child: Text('Forgot Password?'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (usernameController.text.isEmpty) {
                    _showErrorDialog(context, 'Username not defined');
                  } else if (passwordController.text.isEmpty) {
                    _showErrorDialog(context, 'Password not defined');
                  } else {
                    Navigator.of(context).pushReplacementNamed('/adminaccount');
                  }
                },
                child: Text("Log in"),
              ),
              Text('Or sign in with'),
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
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/signup');
                },
                child: Text(
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
