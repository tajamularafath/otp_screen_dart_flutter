import 'package:demo_designing/certificates_download.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF082166),
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
                        const Text(
                          "Enter OTP",
                          style: TextStyle(
                              fontSize: 24, color: AppColor.coolBlack),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 55,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            SizedBox(width: 13),
                            SizedBox(
                              width: 55,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            SizedBox(width: 13),
                            SizedBox(
                              width: 55,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            SizedBox(width: 13),
                            SizedBox(
                              width: 55,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            SizedBox(width: 13),
                            SizedBox(
                              width: 55,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            SizedBox(width: 13),
                          ],
                        ),
                        const SizedBox(height: 18),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.pastelBlue,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CertificateScreen()));
                              },
                              child: const Text("Verify")),
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Didn’t Received Code?",
                              style: TextStyle(
                                  color: AppColor.coolBlack, fontSize: 14),
                            ),
                            SizedBox(width: 2),
                            Text("Resend OTP",
                                style: TextStyle(
                                    color: AppColor.sunsetOrange,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
