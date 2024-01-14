import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/textStyels.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'Dashboard',
          style: style18boldWhite,
        ),
        backgroundColor: const Color(0xff7159E3),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              text: 'Requests',
            ),
            Tab(text: 'Pending'),
            Tab(text: 'Approved'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  color: const Color(0xff7159E3),
                  child: ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 5,
                        )
                      ],
                    ),
                    title: Text(
                      "Fahad Rasool",
                      style: style16White,
                    ),
                    subtitle: Text(
                      "Horizon Petroleum",
                      style: style12White,
                    ),
                    trailing: Text(
                      "5 Km",
                      style: style12White,
                    ),
                  ),
                );
              }),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff7159E3),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.pink,
                            radius: 35,
                          ),
                          Text(
                            "Fahad Rasool",
                            style: style18boldWhite,
                          ),
                          Text(
                            "fahadalibur@gmail.com",
                            style: style13boldWhite,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 20,
              ),
              title: Text(
                'Home',
                style: style13,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.add,
                size: 20,
              ),
              title: Text(
                'Add Business',
                style: style13,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.update_sharp,
                size: 20,
              ),
              title: Text(
                'Update Business',
                style: style13,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                size: 20,
              ),
              title: Text(
                'Logout',
                style: style13,
              ),
              onTap: () {},
            ),
          ],
        )),
      ),
    );
  }
}
