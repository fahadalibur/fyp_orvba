import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/package_text.dart';
import 'package:fyp_orvba/components/textStyels.dart';

class PackageContainer extends StatelessWidget {
  const PackageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
              color: const Color(0xff7159E3),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Rs. 2000/-",
                style: style18boldWhite,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    PackageText(
                      title: "Engine Service",
                    ),
                    PackageText(
                      title: "Engine Service",
                    ),
                    PackageText(
                      title: "Engine Service",
                    ),
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
