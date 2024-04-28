import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/button.dart';
import 'package:fyp_orvba/components/textStyels.dart';
import 'package:gap/gap.dart';

class UserFeedback extends StatefulWidget {
  const UserFeedback({super.key});

  @override
  State<UserFeedback> createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<UserFeedback> {
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
                Text("Post Feedback", style: style18boldBlack,),
                const Gap(20),
                 Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child:  Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          label: Text("Email"),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          label: Text("Name"),
                        ),
                      ),
                     const  TextField(
                        decoration: InputDecoration(
                          label: Text("Feedback"),
                        ),
                        maxLines: null,
                      ),
                     const Gap(50),
                      MyTextButton(title: 'Submit', onPressed: (){})
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(onTap: () {}, child: const Icon(Icons.home)),
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
