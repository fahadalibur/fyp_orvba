import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/servicesContainer.dart';
import 'package:fyp_orvba/user%20interface/requestAssistance.dart';
import 'package:fyp_orvba/user%20interface/userFeedback.dart';
import 'package:gap/gap.dart';

class FindServices extends StatefulWidget {
  const FindServices({super.key});

  @override
  State<FindServices> createState() => _FindServicesState();
}

class _FindServicesState extends State<FindServices> {
    int _selectedIndex = 0; // Keep track of selected index

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
        leading: const Image(image: AssetImage("car.jpg")),
        backgroundColor: Colors.transparent,
        elevation: 2,
        title: const Text('On Road Help'),
      ),
      backgroundColor: const Color.fromARGB(255, 212, 227, 222),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 800,
          child:  Column(
            children: [
              ServicesContainer(
                showMap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const RequestServices())));
                },
                feedback: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const UserFeedback())));
                },
              ),

            const Gap(5),
              ServicesContainer(
                showMap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const RequestServices())));
                },
                feedback: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const UserFeedback())));
                },
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(onTap: (){}, child: Icon(Icons.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
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