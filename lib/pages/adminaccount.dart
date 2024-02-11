import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon/components/toolbar.dart';
import 'package:hackathon/components/useravatar.dart';
import 'package:hackathon/pages/editpreferencepage.dart'; 

enum profilemenu { edit, logout }

class adminaccount extends StatefulWidget {
  @override
  State<adminaccount> createState() => _AdminAccountState();
}

class _AdminAccountState extends State<adminaccount> {
  String region = 'Butibori';
  String cityState = 'Nagpur/Maharashtra';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'edit':
                  _navigateToEditPreferences(context);
                  break;
                case 'logout':
                  print("log out button clicked");
                  break;
                default:
                  print("baawla hogya ke");
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("EDIT"), value: 'edit'),
                PopupMenuItem(child: Text("LOG OUT"), value: 'logout'),
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            useravatar(size: 90),
            SizedBox(height: 24),
            Text("Ashu Rajput"),
            SizedBox(height: 12),
            Text("Bharat"),
            SizedBox(height: 24),
            PersonalInfoCard(region: region, cityState: cityState),
            SizedBox(height: 24),
            ContactInfoCard(),
            SizedBox(height: 24),
            PreferencesCard(),
            //SizedBox(height: 8),
            ME(),
            ElevatedButton(
              onPressed: () async {
                // Navigate to the edit preferences page and wait for the result
                dynamic result = await Navigator.of(context).pushNamed<dynamic>(
                  '/editpage',
                );

                // Check the type of the result
                if (result != null && result is Map<String, String>) {
                  setState(() {
                    region = result['region'] ?? region;
                    cityState = result['cityState'] ?? cityState;
                  });
                }
              },
              child: Text('EDIT'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToEditPreferences(BuildContext context) async {
    Map<String, String>? result =
        await Navigator.of(context).pushNamed('/editPreferencesPage');

    if (result != null) {
      setState(() {
        region = result['region'] ?? region;
        cityState = result['cityState'] ?? cityState;
      });
    }
  }
}

class PersonalInfoCard extends StatelessWidget {
  final String region;
  final String cityState;

  PersonalInfoCard({Key? key, required this.region, required this.cityState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Personal Info',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 28),
                EntryField(label: 'Your Name', value: 'Tanmay Tiwari'),
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

  EntryField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class ContactInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
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
        elevation: 3,
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Preferences',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
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
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        Switch(
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class ME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print("About Us button clicked");
                      },
                      child: Text("ABOUT US")),
                  // SizedBox(
                  //   width: 70,
                  // ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        print("How to Use button clicked");
                      },
                      child: Text("How to USE")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
