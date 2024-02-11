// ignore_for_file: camel_case_types, library_private_types_in_public_api
  
import 'package:agrosnap/pages/about.dart';
import 'package:agrosnap/pages/loginpage.dart';
import 'package:agrosnap/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum profilemenu { edit, logout }

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String region = 'Butibori';
  String cityState = 'Nagpur/Maharashtra';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Text("Profile", style:GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 20, fontWeight: FontWeight.w600))),
            const SizedBox(height: 24),
             CircleAvatar(
              radius: 50,
                backgroundColor: const Color.fromARGB(255, 172,104,255),
                child: Text("T T", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white , fontSize: 40, fontWeight: FontWeight.w600))),  
              ),
            PersonalInfoCard(region: region, cityState: cityState),
            const ContactInfoCard(),
            const PreferencesCard(),
            const ME(),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 104, 104),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                      child: Text("LOGOUT", style:GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600))))
          ],
        ),
      ),
    );
  }

}

class PersonalInfoCard extends StatelessWidget {
  final String region;
  final String cityState;

  const PersonalInfoCard({Key? key, required this.region, required this.cityState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 1,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Personal Info',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 28),
                const EntryField(label: 'Your Name', value: 'Tanmay Tiwari'),
                EntryField(label: 'Region', value: region),
                EntryField(label: 'City/State', value: cityState),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EntryField extends StatelessWidget {
  final String label;
  final String value;

  const EntryField({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class ContactInfoCard extends StatelessWidget {
  const ContactInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          elevation: 1,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Info',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 28),
                EntryField(label: 'Phone Number', value: '+91 1234567890'),
                EntryField(label: 'Email', value: 'xyz@gmail.com'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PreferencesCard extends StatefulWidget {
  const PreferencesCard({super.key});

  @override
  _PreferencesCardState createState() => _PreferencesCardState();
}

class _PreferencesCardState extends State<PreferencesCard> {
  bool emailNotification = false;
  bool pushNotification = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Preferences',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              buildPreferenceSwitch(
                'Email Notification',
                emailNotification,
                (value) {
                  setState(() {
                    emailNotification = value;
                  });
                },
              ),
              buildPreferenceSwitch(
                'Push Notification',
                pushNotification,
                (value) {
                  setState(() {
                    pushNotification = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPreferenceSwitch(
      String label, bool value, ValueChanged<bool> onChanged) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Switch(
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class ME extends StatelessWidget {
  const ME({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
                      },
                      style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 172, 104, 255),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                      child: Text("ABOUT US", style:GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)))),
                  const SizedBox(width: 70),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Onboarding()));
                      },
                      style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 172, 104, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                      child: Text("HOW TO USE", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
