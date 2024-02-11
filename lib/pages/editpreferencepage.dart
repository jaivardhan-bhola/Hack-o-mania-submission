import 'package:flutter/material.dart';

class EditPreferencesForm extends StatefulWidget {
  @override
  _EditPreferencesFormState createState() => _EditPreferencesFormState();
}

class _EditPreferencesFormState extends State<EditPreferencesForm> {
  TextEditingController regionController = TextEditingController();
  TextEditingController cityStateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Preferences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Edit Preferences',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: regionController,
              decoration: InputDecoration(labelText: 'Region'),
            ),
            TextFormField(
              controller: cityStateController,
              decoration: InputDecoration(labelText: 'City/State'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String editedRegion = regionController.text.trim();
                String editedCityState = cityStateController.text.trim();

                if (editedRegion.isEmpty || editedCityState.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Please fill out all fields.'),
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
                } else {
                  Map<String, String> editedValues = {
                    'region': editedRegion,
                    'cityState': editedCityState,
                  };
                  Navigator.of(context).pop(editedValues);
                }
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
