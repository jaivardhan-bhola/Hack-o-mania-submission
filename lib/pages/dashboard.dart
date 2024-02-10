import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(20.92, 79.00);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
          Center(child: Text("Welcome to AgroSnap!", style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)))),
          const SizedBox(height: 20),
          Card(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.9,
              child: GoogleMap(
   initialCameraPosition: CameraPosition(
      target: _center,
      zoom: 11.0,
   ),
   markers: {
      const Marker(
         markerId: MarkerId('Your Farm Location'),
         position: LatLng(20.92, 79.00),
      )
   },
)
            ), 
            ),
        ],
      )
    );
  }
}