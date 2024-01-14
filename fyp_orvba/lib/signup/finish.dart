import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/button.dart';
import 'package:fyp_orvba/login_screen.dart';

class verifiedUser extends StatefulWidget {
  const verifiedUser({super.key});

  @override
  State<verifiedUser> createState() => _verifiedUserState();
}

class _verifiedUserState extends State<verifiedUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Column(
        children: [
          const Expanded(
            flex: 4,
            child: Flexible(child: Image(image: AssetImage('assets/check.jpg'))),
          ),
          const Expanded(
            flex: 5,
            child: Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Congratulations!',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text(textAlign: TextAlign.center,'You are now verified user',style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ),
          Expanded(
            child: Flexible(
              child: Column(
                children: [
                  Button(
                    text: "Let's Go",
                    onpress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>userLogin()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
