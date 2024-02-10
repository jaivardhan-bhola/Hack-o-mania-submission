import 'package:agrosnap/pages/home_admin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:textfield_datepicker/textfield_datepicker.dart';
import 'package:intl/intl.dart';
class AddFolder extends StatefulWidget {
  const AddFolder({super.key});

  @override
  AddFolderState createState() => AddFolderState();
}

List <String> _status = ["completed", "pending"];
class AddFolderState extends State<AddFolder> {
  
  final _textfieldDatePickerController = TextEditingController();

  String _currstatus = _status[0];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add Folder", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold))),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField (
                      decoration: InputDecoration(
                        hintText: "Name",
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
                        hintText: "Area",
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
                    const SizedBox(height: 25),
                    Text("Date", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400))),
                    TextfieldDatePicker(cupertinoDatePickerBackgroundColor: Colors.white,
              cupertinoDatePickerMaximumDate: DateTime(2099),
              cupertinoDatePickerMaximumYear: 2099,
              cupertinoDatePickerMinimumYear: 1990,
              cupertinoDatePickerMinimumDate: DateTime(1990),
              cupertinoDateInitialDateTime: DateTime.now(),
              materialDatePickerFirstDate: DateTime.now(),
              materialDatePickerInitialDate: DateTime.now(),
              materialDatePickerLastDate: DateTime(2099),
              preferredDateFormat: DateFormat("yyyy-MM-dd"),
              textfieldDatePickerController: _textfieldDatePickerController,
              ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Status", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400))),
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: [
                        Radio(
                          value: _status[0],
                          groupValue: _currstatus,
                          onChanged: (value) {
                            setState(() {
                              _currstatus = value.toString();
                            });
                          },
                        ),
                        
                        Text("Completed", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400))),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: _status[1],
                          groupValue: _currstatus,
                          onChanged: (value) {
                            setState(() {
                              _currstatus = value.toString();
                            });
                          },
                        ),
                        Text("Pending", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400))),
                      ],
                    ),         
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeAdmin())),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeAdmin())),
          child: const Text("Add"),
        ),
      ],
    );
  }
}