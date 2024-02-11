import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _controller = PageController();
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [PageView(
          onPageChanged: (int index) {
            setState(() {
              _isLastPage = index == 7;
            });
          },
          controller: _controller,
          children: [
            Container(
              color: const Color(0xffc8aefe),
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text('Welcome to AgroScan', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,),
                  Image.asset('assets/Onboarding1.gif',height: MediaQuery.of(context).size.height * 0.7),
                ],
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: Column(  
                children: [
                  const SizedBox(height: 100),
                  Text('Login or Sign Up', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,),
                  const SizedBox(height: 20),
                  Image.asset('assets/Onboarding2.png', height: MediaQuery.of(context).size.height * 0.6, width: MediaQuery.of(context).size.width * 0.7,),
                ],
              ),
            ),
            Container(
              color: Colors.blue[200],
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text('Region assigned to you shows on map', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
                  textAlign: TextAlign.center,),
                  Image.asset('assets/Onboarding3.png', height: MediaQuery.of(context).size.height * 0.6, width: MediaQuery.of(context).size.width * 0.7,),
                ],
              ),
            ),
            Container(
              color: Colors.blue[300],
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text('Click on start upload', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),textAlign: TextAlign.center,),
                  Image.asset('assets/Onboarding4.png', height: MediaQuery.of(context).size.height * 0.6, width: MediaQuery.of(context).size.width * 0.7,),
                ],
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text('Choose from Upload or Camera', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ), textAlign: TextAlign.center,),
                  Image.asset('assets/Onboarding5.png', height: MediaQuery.of(context).size.height * 0.6, width: MediaQuery.of(context).size.width * 0.7,),
                ],
              ),
            ),
            Container(
              color: Colors.yellow[200],
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text('Enter yield data from last season', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),textAlign: TextAlign.center,),
                  Image.asset('assets/Onboarding6.png', height: MediaQuery.of(context).size.height * 0.6, width: MediaQuery.of(context).size.width * 0.7,),
                ],
              ),
            ),
            Container(
              color: Colors.yellow[300],
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text('Enter dimensions of field and submit', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),textAlign: TextAlign.center,),
                  Image.asset('assets/Onboarding7.png', height: MediaQuery.of(context).size.height * 0.6, width: MediaQuery.of(context).size.width * 0.7,),
                ],
              ),
            ),
            Container(
              color: Colors.yellow[400],
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text('Admin gets details of your entry', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),textAlign: TextAlign.center,),
                  Image.asset('assets/Onboarding8.png', height: MediaQuery.of(context).size.height * 0.6, width: MediaQuery.of(context).size.width * 0.7,),
                ],
              ),
            ),
          ]
        ),
        Container(
          alignment: const Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('Skip', style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
              ),
              SmoothPageIndicator(controller: _controller, count: 8, effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Color(0xff1A1528),
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 4,
                spacing: 5,
              )),

              _isLastPage ? GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('Done', style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
              ) : GestureDetector(
                onTap: () {
                  _controller.nextPage(duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
                },
                child: Text('Next', style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
              )

            ],
          ))
        ]
      ),
      );
    
  }
}