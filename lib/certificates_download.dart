import 'package:flutter/material.dart';

import 'constants.dart';
import 'home_screen.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Certificates"),
            titleTextStyle: const TextStyle(
                color: AppColor.coolBlack,
                fontFamily: "Outfit",
                fontSize: 18,
                fontWeight: FontWeight.w700),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/arrow-left.png",)),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                  },
                  icon: Image.asset("assets/images/filter.png"))
            ]),
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Column(
                children: [
                  Column(
                    children: [
                      ListTile(
                        tileColor: AppColor.brightGray,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        leading: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/pdf_icon.png")),
                        title: const Text(
                          "Magic Tricks.pdf",
                          style: TextStyle(
                              color: AppColor.coolBlack,
                              fontWeight: FontWeight.w700),
                        ),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "94 KB • Oct 08, 2024 | 01:05 PM",
                              style: TextStyle(
                                  color: AppColor.cadetGrey,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 8),  // Adding spacing between the two sections
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/edit.png"),
                            const SizedBox(width: 16),
                            Image.asset("assets/images/trash.png"),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0 ),
                        tileColor: AppColor.brightGray,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/profile.png"),
                            const SizedBox(width: 4),
                            const Text(
                              "Mahadevi Verma",
                              style: TextStyle(
                                  color: AppColor.metallicBlue,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Outfit"),
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Sent to",
                                  style: TextStyle(
                                      color: AppColor.metallicBlue,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Outfit"),
                                ),
                                SizedBox(width: 1),
                                Text(
                                  "Neha Sharma",
                                  style: TextStyle(
                                      color: AppColor.metallicBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      fontFamily: "Outfit"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Image.asset("assets/images/profile.png"),
                      //     const SizedBox(width: 6),
                      //     const Text(
                      //       "Mahadevi Verma",
                      //       style: TextStyle(
                      //           color: AppColor.metallicBlue,
                      //           fontWeight: FontWeight.w400,
                      //           fontFamily: "Outfit"),
                      //     ),
                      //     const SizedBox(width: 116),
                      //     const Row(
                      //       // mainAxisAlignment: MainAxisAlignment.end,
                      //       // crossAxisAlignment: CrossAxisAlignment.end,
                      //       children: [
                      //         Text(
                      //           "Sent to",
                      //           style: TextStyle(
                      //               color: AppColor.metallicBlue,
                      //               fontWeight: FontWeight.w400,
                      //               fontFamily: "Outfit"),
                      //         ),
                      //         SizedBox(width: 2.5),
                      //         Text(
                      //           "Neha Sharma",
                      //           style: TextStyle(
                      //               color: AppColor.metallicBlue,
                      //               fontWeight: FontWeight.w700,
                      //               fontFamily: "Outfit"),
                      //         ),
                      //       ],
                      //     )
                      //   ],
                      // ), // const Text(
                      //   "Magic Tricks.pdf",
                      //   style: TextStyle(
                      //       fontSize: 14.0,
                      //       color: AppColor.coolBlack,
                      //       fontWeight: FontWeight.w700),
                      // ),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: 5,
        ),

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ListView.builder(
        //     // itemCount: certificates.length,
        //     itemBuilder: (context, index) {
        //       return Card(
        //         color: Colors.blue,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(8.0)
        //         ),
        //       child: Container(
        //         width: 100,
        //       ),);
        //     },
        //   ),
        // ),
        );
  }
}
