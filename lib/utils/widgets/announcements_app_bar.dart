import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AnnouncementsAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 275.0,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset("assets/images/image_2.png", fit: BoxFit.cover),
      ),
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Container(
            alignment: Alignment.center,
            height: 30.0,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
            ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The Christmas Glow",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/categeory_icon.png"),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Category",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Outfit",
                                color: AppColor.cadetGrey),
                          ),
                          Text(
                            "Oct 12, 2024",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w600,
                                color: AppColor.coolBlack),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/calender_icon.png"),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Outfit",
                                color: AppColor.cadetGrey),
                          ),
                          Text(
                            "9:00 AM",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w600,
                                color: AppColor.coolBlack),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/time_icon.png"),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Outfit",
                                color: AppColor.cadetGrey),
                          ),
                          Text(
                            "Annual Meet",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w600,
                                color: AppColor.coolBlack),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Outfit"),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Lorem amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Outfit"),
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [Text("Post by",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Outfit"),)],
                )
              ],
            ),
          ),)
      ),
      title: const Text(
        "Announcements Details",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: "Outfit",
        ),
      ),
      centerTitle: true,
      leading: Image.asset("assets/images/arrow-left-white.png"),
    );
  }
}
