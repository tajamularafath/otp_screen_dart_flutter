import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'announcements_detail_screen.dart';
import 'constants.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Announcements",
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Outfit",
            fontWeight: FontWeight.w500,
            color: AppColor.cetaceanBlue,
          ),
        ),
      ),
      body: ListView.builder(itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
         return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: AppColor.brightGray),
              borderRadius: BorderRadius.circular(16),
              // color: AppColor.brightGray,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AnnouncementsDetail()));
                                },
                                child: Image.asset("assets/images/group_image.png"))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Oct 22, 2024 | 9:00 AM",
                          style: TextStyle(
                              fontFamily: "Outfit",
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: AppColor.coralReef),
                        ),
                        Image.asset("assets/images/more-circle.png"),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "The Christmas Glow",
                          style: TextStyle(
                              fontFamily: "Outfit",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.cetaceanBlue),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididun.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Outfit",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.coolBlack),
                            // overflow: TextOverflow.ellipsis,
                            // maxLines: 2,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/ptofile_image2.png",
                          fit: BoxFit.fill,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mahadevi Verma",
                                style: TextStyle(
                                    color: AppColor.metallicBlue,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    fontFamily: "Outfit"),
                              ),
                              Text(
                                "Oct 7, 2024 | 10:30 AM",
                                style: TextStyle(
                                    color: AppColor.cadetGrey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    fontFamily: "Outfit"),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ); },
      ),
    );
  }
}
