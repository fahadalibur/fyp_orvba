import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/button.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RequestServices extends StatefulWidget {
  const RequestServices({super.key});

  @override
  State<RequestServices> createState() => _FindServicesState();
}

class _FindServicesState extends State<RequestServices> {
  int _selectedIndex = 0; // Keep track of selected index

  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation based on selected index
    if (index == 1) {
      setState(() {
        _selectedIndex = 0;
      });
      // Logout logic here (e.g., navigate to login screen)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage("car.jpg")),
        backgroundColor: Colors.transparent,
        elevation: 2,
        title: const Text('On Road Help'),
      ),
      backgroundColor: const Color.fromARGB(255, 212, 227, 222),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 800,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.blue,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(target: LatLng(30.1568295, 72.6515467), zoom: 16)),
                ),
               const Text(
                  "Latitude: 434.949",
                ),
                const Text("Longitude: 434.949"),
                const Text("Complaint:"),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Change this to your desired color
                        width:
                            1.0, // Change this to adjust the border thickness
                      ),
                    ),
                  ),
                ),
                const Gap(5),
                MyTextButton(title: "Submit", onPressed: () {})
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(onTap: () {}, child: Icon(Icons.home)),
            label: 'Home',
          ),
         const BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
