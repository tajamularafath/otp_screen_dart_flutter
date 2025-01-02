import 'package:demo_designing/constants.dart';
import 'package:demo_designing/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.coolBlack,
      body: Stack(
        children: [
          Image.asset('assets/images/Group.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/female-teacher-saree1.png'),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Image.asset("assets/images/kiglee_logo.png"),
                      const SizedBox(height: 30),
                      const Text("Login Your Account",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Mobile Number"),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.pastelBlue,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpScreen()));
                          },
                          child: const Text("Request OTP",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text("Sign in Using Password",
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: AppColor.coolBlack)),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("By Clicking, I accept the",
                              style: TextStyle(
                                  fontSize: 12, color: AppColor.metallicBlue)),
                          Text("Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 12, color: AppColor.sunsetOrange)),
                          Text("&",
                              style: TextStyle(
                                  fontSize: 12, color: AppColor.metallicBlue)),
                          Text("Privacy Policy",
                              style: TextStyle(
                                  fontSize: 12, color: AppColor.sunsetOrange)),
                          SizedBox(height: 60),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
