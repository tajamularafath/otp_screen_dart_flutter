import 'package:demo_designing/constants.dart';
import 'package:demo_designing/utils/widgets/announcements_app_bar.dart';
import 'package:flutter/material.dart';

class AnnouncementsDetail extends StatelessWidget {
  const AnnouncementsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 275.0,
              backgroundColor: Colors.white,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                background:
                    Image.asset("assets/images/image_2.png", fit: BoxFit.cover),
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 30.0,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        )),
                  )),
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
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Outfit"),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Lorem amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Outfit"),
              ),
              SizedBox(height: 16.0),
              Text(
                "Post by",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Outfit"),
              ),
              const SizedBox(height: 14.0),
              Row(
                children: [
                  Image.asset("assets/images/profile_icon_2.png"),
                  const SizedBox(width: 4.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mahadevi Verma",
                        style: TextStyle(
                            color: AppColor.metallicBlue,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Oct 7, 2024 | 10:30 AM",
                        style: TextStyle(
                            color: AppColor.metallicBlue,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 27.5,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.permanentGeraniumLake,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/edit.png",
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Edit",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: const BorderSide(
                                    width: 1,
                                    color: AppColor.permanentGeraniumLake)),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/trash.png",
                                color: AppColor.permanentGeraniumLake,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Delete",
                                style: TextStyle(
                                    color: AppColor.permanentGeraniumLake),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
