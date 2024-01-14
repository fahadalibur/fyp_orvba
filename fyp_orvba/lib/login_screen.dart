import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/button.dart';
import 'package:fyp_orvba/components/textbox.dart';
import 'package:fyp_orvba/forgot_password/email_otp.dart';
import 'package:gap/gap.dart';

class userLogin extends StatefulWidget {
  const userLogin({super.key});

  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Flexible(child: Image(image: AssetImage('assets/car.jpg'))),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Login',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                    Text('Please login to continue',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textBox(text: 'Email', icon: Icons.email),
                    Gap(15),
                    textBox(text: 'Password', icon: Icons.lock),
                    Gap(10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(alignment: Alignment.bottomRight, child: InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>emailVerificationCode()));
                      },child: Text('Forgot Password?',style: TextStyle(color: Color(0xff7159E3),fontSize: 18),))),
                    )
                  ],)),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Button(text: 'Login', onpress: (){

                  }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
