// ignore_for_file: unused_local_variable, camel_case_types

import 'package:agrosnap/pages/camera.dart';
import 'package:agrosnap/pages/upload_details_yield.dart';
import 'package:camera/camera.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class uploadDetailsPhoto extends StatefulWidget {
  const uploadDetailsPhoto({super.key});

  @override
  uploadDetailsPhotoState createState() => uploadDetailsPhotoState();
}

class uploadDetailsPhotoState extends State<uploadDetailsPhoto> {
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 172, 104, 255),
                  child: Text("1", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("2", style: TextStyle(color: Color.fromARGB(255, 200,200,200))),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("3", style: TextStyle(color: Color.fromARGB(255, 200,200,200))),  
                ),
                      ]),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: LinearProgressIndicator(
                value: 0.33,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Color.lerp(Colors.blue[800], const Color.fromARGB(255, 172,104,255), 0.5)),
                borderRadius: BorderRadius.circular(20),
                minHeight: 10,
              ),
            ),
            const SizedBox(height: 40),
            Text("Upload or Click an image", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 20, fontWeight: FontWeight.w600))),
            const SizedBox(height: 20),
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 172, 104, 255),
              radius: 100,
              child: Icon(Icons.upload_rounded, color: Colors.white, size: 175),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:  () async { await availableCameras().then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (_) => Camera(cameras: value))));}, style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 172, 104, 255), padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), elevation: 0, shadowColor: Colors.transparent, textStyle: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),), child: const Text("Camera", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: () async{FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.custom,allowedExtensions: ['jpg', 'png']);}, style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 172, 104, 255), padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), elevation: 0, shadowColor: Colors.transparent, textStyle: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),), child: const Text("Upload", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                )
              ],
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const uploadDetailsYield()));
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
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              child: const Text("Next", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
            ),
            ],
        ),
      ),
    );
  }
}
