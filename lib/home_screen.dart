import 'package:demo_designing/announcements_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontFamily: "Outfit",
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        title: Column(
          children: [
            const Text("Hello, Mahadevi Verma"),
            const Text(
              "Employee Id : KIG020",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.cadetGrey),
            ),
          ],
        ),
        leading: Container(
          width: 40, // Set the width of the container
          height: 40, // Set the height of the container
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/menu_icon.png"),
              // fit: BoxFit
              //     .cover, // Ensures the background image covers the entire container
            ),
            borderRadius: BorderRadius.circular(8), // Optional: rounded corners
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/menu.png"),
            // The icon displayed in the container
            iconSize: 24,
            // Adjust the size of the icon
            padding: EdgeInsets.zero, // Remove extra padding
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnnouncementsScreen()));
                },
                child: Image.asset("assets/images/bell_icon.png")),
          ),
        ],
      ),
      body: Container(
        // color: Colors.amber,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: AppColor.brightGray),
                  borderRadius: BorderRadius.circular(16),
                  // color: AppColor.brightGray,
                ),
                // Replace AppColor.sunsetOrange with a valid color
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Main Padding
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Ellipse 36.png"),
                                const SizedBox(width: 8),
                                const Column(
                                  children: [
                                    Text(
                                      'Mahadevi Verma',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.cetaceanBlue,
                                          fontFamily: "Outfit"),
                                    ),
                                    Text(
                                      "Oct 7, 2024 | 10:30 AM",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Outfit",
                                          color: AppColor.cadetGrey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(width: 41),
                            Card(
                              // color: AppColor.brightGray,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/school_icon.png"),
                                    const SizedBox(width: 4),
                                    const Text(
                                      "School",
                                      style: TextStyle(
                                          color: AppColor.coolBlack,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Outfit"),
                                    ),
                                    const SizedBox(width: 4),
                                    Image.asset("assets/images/info-circle.png")
                                  ],
                                ),
                              ),
                            ),
                            Image.asset("assets/images/more-circle.png"),
                          ],
                        ),
                      ),
                      const Text(
                        // textAlign: TextAlign.start,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod "
                        "tempor incididunt ut labore... More",
                        style: TextStyle(
                            fontFamily: "Outfit",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.coolBlack),
                      ),
                      const SizedBox(
                        height: 6,
                      ),

                      // SizedBox(width: 308,  // Set desired width
                      //   height: 270,
                      //   child:
                      // Container(
                      //   color: Colors.red,
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     image: DecorationImage(
                      //         image: AssetImage("assets/images/image_1.png",)
                      //       ,)
                      //   ),
                      //   child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(children: [
                          Image.asset(
                            "assets/images/image_1.png",
                            fit: BoxFit.fitWidth,
                            width: MediaQuery.of(context).size.width,
                            // width: 308,  // Set desired width
                            // height: 270, // Set desired height
                            // fit: BoxFit.cover, // Crop or scale to fill the area
                            // height: 200,
                            // width: double.infinity,
                            // fit: BoxFit.cover,
                            // width: 308,  // Set the width of the image
                            // height: 270, // Set the height of the image
                            // fit: BoxFit.cover, // Optional: to maintain aspect ratio or stretch
                          ),

                          // Mute Icons
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Image.asset("assets/images/mute_icon.png",
                                  fit: BoxFit.contain),
                            ),
                          )
                        ]),
                      ),
                      // ),
                      // ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/profile.png",
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text(
                          "Liked by",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.metallicBlue,
                              fontFamily: "Outfit"),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          "Mitchell johnson",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColor.coolBlack,
                              fontFamily: "Outfit"),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          "And",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.metallicBlue,
                              fontFamily: "Outfit"),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          "25 others",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColor.coolBlack,
                              fontFamily: "Outfit"),
                        ),
                      ]),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: AppColor.brightGray, // Line color
                        thickness: 1.0, // Line thickness
                        indent: 0, // Start padding
                        endIndent: 0, // End padding
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/heart.png"),
                              const SizedBox(width: 2),
                              const Text(
                                "Like",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.permanentGeraniumLake,
                                    fontFamily: "Outfit"),
                              ),
                            ],
                          ),
                          const SizedBox(width: 2),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/share_icon.png",
                              ),
                              const SizedBox(width: 2),
                              const Text(
                                "Share",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.cadetGrey,
                                    fontFamily: "Outfit"),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
