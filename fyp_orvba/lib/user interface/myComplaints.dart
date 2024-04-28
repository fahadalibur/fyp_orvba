import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/complaintContainer.dart';
import 'package:fyp_orvba/components/textStyels.dart';
import 'package:gap/gap.dart';

class MyComplaint extends StatefulWidget {
  const MyComplaint({super.key});

  @override
  State<MyComplaint> createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<MyComplaint> {
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
                Text("My Requests", style: style18boldBlack,),
                const Gap(20),
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Colors.white,
                    filled: true
                  ),
                ),
               const Gap(20),
                 const Column(
                   children: [
                     ComplaintContainer(),
                     Gap(10),
                     ComplaintContainer(),
                     Gap(10),
                     ComplaintContainer(),
                     Gap(10),
                     ComplaintContainer(),
                   ],
                 )
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
