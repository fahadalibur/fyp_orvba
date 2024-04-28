import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/button.dart';
import 'package:fyp_orvba/components/textStyels.dart';
import 'package:gap/gap.dart';

class ComplaintContainer extends StatelessWidget {
  const ComplaintContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.94,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Complaint ID: 1",
              style: style18boldBlack,
            ),
            Gap(5),
            Text(
              "Email: fahad@gmail.com",
              style: style14boldBlack,
            ),
            Gap(5),
            Text(
              "Complaint: 2 wheel puncture",
              style: style14boldBlack,
            ),
            Gap(5),
            Text(
              "Status: Pending",
              style: style14boldGreen,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor:  Color.fromARGB(67, 110, 161, 249),
          radius: 66,
          child: CircleAvatar(
            backgroundColor:  Colors.transparent,
            backgroundImage: AssetImage("user.png"),
            radius: 65,
          ),
        ),
        Gap(50),
        Container(
          width: MediaQuery.of(context).size.width * 0.94,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Name:",
                      style: style14Grey,
                    ),
                    const Gap(10),
                    Text(
                      "Fahad Rasool",
                      style: style14boldBlack,
                    ),
                  ],
                ),
                const Gap(10),
                Row(
                  children: [
                    Text(
                      "Email:",
                      style: style14Grey,
                    ),
                    const Gap(10),
                    Text(
                      "fahad@gmail.com",
                      style: style14boldBlack,
                    ),
                  ],
                ),
                const Gap(10),
                Row(children: [
                  Text(
                    "Password:",
                    style: style14Grey,
                  ),
                  const Gap(10),
                  Text(
                    "12345",
                    style: style14boldBlack,
                  ),
                ]),
                const Gap(10),
                Row(
                  children: [
                    Text(
                      "Mobile:",
                      style: style14Grey,
                    ),
                    const Gap(10),
                    Text(
                      "03674664648",
                      style: style14boldBlack,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Gap(10),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 100,
              child: MyTextButton(
                  title: "Update",
                  onPressed: () {
                    print("update button pressed");
                  })),
        )
      ],
    );
  }
}
