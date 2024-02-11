import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:textfield_datepicker/textfield_datepicker.dart';
import 'package:agrosnap/pages/home_admin.dart';
class AddFolder extends StatefulWidget {
  const AddFolder({super.key});

  @override
  AddFolderState createState() => AddFolderState();
}

class AddFolderState extends State<AddFolder> {
  int currentIndex = 0;
  final screens = [];
  
 final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text("Add a new folder", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 20, fontWeight: FontWeight.w600))),
            const SizedBox(height: 20),

            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 172, 104, 255),
              radius: 100,
              child: Icon(Icons.create_new_folder_rounded, color: Colors.white, size: 175),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name of Crop",
                      hintStyle: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Region",
                      hintStyle: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  // pick date
                  const SizedBox(height: 20),
                   SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                     child: TextfieldDatePicker(
                                   cupertinoDatePickerBackgroundColor: Colors.white,
                                   cupertinoDatePickerMaximumDate: DateTime(2099),
                                   cupertinoDatePickerMaximumYear: 2099,
                                   cupertinoDatePickerMinimumYear: DateTime.now().year,
                                   cupertinoDatePickerMinimumDate: DateTime.now(),
                                   cupertinoDateInitialDateTime: DateTime.now(),
                                   materialDatePickerFirstDate: DateTime.now(),
                                   materialDatePickerInitialDate: DateTime.now(),
                                   materialDatePickerLastDate: DateTime(2099),
                                   preferredDateFormat: DateFormat('dd-MMMM-' 'yyyy'),
                                   textfieldDatePickerController: _controller,
                                   style: const TextStyle(
                                     fontWeight: FontWeight.w400,
                                     color: Colors.black,
                                   ),decoration: InputDecoration(
                        hintText: "Date",
                        hintStyle: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),),),
                   ),
                ],
              ),
            ),

            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeAdmin()));
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
