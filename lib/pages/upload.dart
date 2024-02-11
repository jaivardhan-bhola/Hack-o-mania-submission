import 'package:agrosnap/pages/upload_details_photo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Upload extends StatelessWidget {
  const Upload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(child: Text("Upload data", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)))),
          const SizedBox(height: 20),
          Image.asset("assets/Field.png",),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                "Details Related to Farm",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Color(0xff26093D),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ListTile(
              leading: const CircleAvatar(backgroundColor:Color.fromARGB(255, 172, 104, 255), child: Icon(Icons.description_rounded, color: Colors.white)),
              title: Text("Images", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color(0xff26093D), fontSize: 20, fontWeight: FontWeight.w600))),
              subtitle: Text("Click and upload images of your field", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255,172,104,255), fontSize: 12, fontWeight: FontWeight.w400))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ListTile(
              leading: const CircleAvatar(backgroundColor:Color.fromARGB(255, 172, 104, 255), child: Icon(Icons.schedule, color: Colors.white)),
              title: Text("Yield Data", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color(0xff26093D), fontSize: 20, fontWeight: FontWeight.w600))),
              subtitle: Text("Your yield from last season", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255,172,104,255), fontSize: 12, fontWeight: FontWeight.w400))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ListTile(
              leading: const CircleAvatar(backgroundColor:Color.fromARGB(255, 172, 104, 255), child: Icon(Icons.star_outline, color: Colors.white)),
              title: Text("Field Dimensions", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color(0xff26093D), fontSize: 20, fontWeight: FontWeight.w600))),
              subtitle: Text("Required for mapping", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255,172,104,255), fontSize: 12, fontWeight: FontWeight.w400))),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context) => const uploadDetailsPhoto()));}, style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 172, 104, 255), padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), elevation: 0, shadowColor: Colors.transparent, textStyle: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),), child: const Text("Start Upload", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
          ),
        ]
      )
    );
  }
}