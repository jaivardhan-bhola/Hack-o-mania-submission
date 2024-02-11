// ignore_for_file: camel_case_types

import 'package:agrosnap/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class uploadDetailsField extends StatefulWidget {
  const uploadDetailsField({super.key});

  @override
  uploadDetailsFieldState createState() => uploadDetailsFieldState();
}

class uploadDetailsFieldState extends State<uploadDetailsField> {
  int currentIndex = 0;
  final screens = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Upload Details",
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("1", style: TextStyle(color: Color.fromARGB(255, 200,200,200))),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("2", style: TextStyle(color: Color.fromARGB(255, 200,200,200))),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 172,104,255),
                child: Text("3", style: TextStyle(color: Colors.white)),  
              ),
                    ]),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: LinearProgressIndicator(
              value: 1,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Color.lerp(Colors.blue[800], const Color.fromARGB(255, 172,104,255), 0.5)),
              borderRadius: BorderRadius.circular(20),
              minHeight: 10,
            ),
          ),
          const SizedBox(height: 40),
          Align(alignment: Alignment.topLeft,child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Dimensions", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 25, fontWeight: FontWeight.w600))),
                    const SizedBox(height: 10),
                    Image.asset("assets/Field2.png"),
                    const SizedBox(height: 20),
                    TextField (
                      decoration: InputDecoration(
                        hintText: "Length",
                        hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.grey[400], fontSize: 15, fontWeight: FontWeight.w400)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 172,104,255)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField (
                      decoration: InputDecoration(
                        hintText: "Width",
                        hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.grey[400], fontSize: 15, fontWeight: FontWeight.w400)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 172,104,255)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                      ]),
              ),
            ),
          )),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 172, 104, 255),
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 0,
              shadowColor: Colors.transparent,
              textStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            child: const Text("Submit", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
          ),
          ],
      ),
    );
  }
}
