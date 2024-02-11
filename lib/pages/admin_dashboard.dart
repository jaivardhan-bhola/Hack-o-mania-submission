import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  AdminDashboardState createState() => AdminDashboardState();
}
  class AdminDashboardState extends State<AdminDashboard> {
    bool _flag1 = true;
    bool _flag2 = false;
    Map<String, Map> folders = {
      "Area1_Crop1": {
        "area": "Area1",
        "crop": "Crop1",
        "date" : "5th August 2023",
        "status": "completed",
      },
      "Area2_Crop2": {
        "area": "Area2",
        "crop": "Crop2",
        "date" : "29th October 2023",
        "status": "pending",
      },
      "Area3_Crop3": {
        "area": "Area3",
        "crop": "Crop3",
        "date" : "15th December 2023",
        "status": "completed",
      },
      "Area4_Crop4": {
        "area": "Area4",
        "crop": "Crop4",
        "date" : "1st January 2024",
        "status": "pending",
      },
      "Area5_Crop5": {
        "area": "Area5",
        "crop": "Crop5",
        "date" : "5th February 2024",
        "status": "completed",
      },
      "Area6_Crop6": {
        "area": "Area6",
        "crop": "Crop6",
        "date" : "15th March 2023",
        "status": "pending",
      },
      "Area7_Crop7": {
        "area": "Area7",
        "crop": "Crop7",
        "date" : "5th April 2023",
        "status": "completed",
      },
      "Area8_Crop8": {
        "area": "Area8",
        "crop": "Crop8",
        "date" : "15th May 2023",
        "status": "pending",
      },
      "Area9_Crop9": {
        "area": "Area9",
        "crop": "Crop9",
        "date" : "5th June 2023",
        "status": "completed",
      },
    };
    @override
    void initState() {
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _flag1 = true;
                    _flag2 = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _flag1 ? const Color.fromARGB(255, 172, 104, 255) : Colors.white,
                ),
                child:  Text("Completed", style: TextStyle( color: _flag1 ? Colors.white : Colors.black)),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _flag1 = false;
                    _flag2 = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _flag2 ? const Color.fromARGB(255, 172, 104, 255) : Colors.white,
                ),
                child: Text("Pending", style: TextStyle(color: _flag2 ? Colors.white : Colors.black)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: folders.length,
              itemBuilder: (context, index) {
                String key = folders.keys.elementAt(index);
                Map folder = folders[key]!;
                if (_flag1 && folder["status"] == "completed") {
                  return Card(
                    child: ListTile(
                      title: Text(key, style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 20, fontWeight: FontWeight.bold))),
                      subtitle: Text("${folder["area"]}\n${folder["date"]}", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400))),
                      trailing: Image.asset(
                        "assets/Field.png",
                      )
                    ),
                  );
                } else if (_flag2 && folder["status"] == "pending") {
                  return Card(
                    child: ListTile(
                      title: Text(key, style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 20, fontWeight: FontWeight.bold))),
                      subtitle: Text("${folder["area"]}\n${folder["date"]}", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400))),
                      trailing: Image.asset(
                        "assets/Field.png",
                      )
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
  })),     
        ],
      ),
      );
  }
}
