import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/textStyels.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              color: const Color(0xff7159E3),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Search results for",
                          style: style24boldWhite,
                        ),
                        Text(
                          "Nearby Petroleum Stations",
                          style: style13boldWhite,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        color: Color(0xff7159E3),
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
                          trailing: Column(
                            children: [
                              Text(
                                "5 Km",
                                style: style12White,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "(25)",
                                    style: style12White,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
