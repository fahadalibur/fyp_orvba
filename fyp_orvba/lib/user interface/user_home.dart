import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/holderContainer.dart';
import 'package:fyp_orvba/user%20interface/findServices.dart';
import 'package:fyp_orvba/user%20interface/myComplaints.dart';
import 'package:fyp_orvba/user%20interface/userProfile.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<UserHomePage> {
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
List<Widget> userHomeWidgets=[
UserHome(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color.fromARGB(255, 212, 227, 222),

      body: userHomeWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 101, 185, 159),
        onTap: _onItemTapped,
      ),
    );
  }
}


class UserHome extends StatelessWidget {
  const UserHome({super.key});

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
      body: Container(
        width: double.infinity,
        child: Expanded(
          child: Column(
          
            children: [
            HolderContainer2(title: 'Find Services',iconData: Icons.home, onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const FindServices())));
            },),
            HolderContainer2(title: 'View Requests',iconData: Icons.request_page, onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>const MyComplaint())));
            },),
            HolderContainer2(title: 'My Profile',iconData: Icons.person, onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>const UserProfile())));
            },),
            ],
          ),
        ),
      ),
    );
  }
}
