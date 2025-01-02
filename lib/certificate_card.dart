import 'package:flutter/material.dart';

import 'constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                tileColor: AppColor.brightGray,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/pdf_icon.png",
                        width: 33, height: 33)
                ),
                title: const Text("Magic Tricks.pdf"),
                // titleTextStyle: const TextStyle(
                //     color: AppColor.cadetGrey,
                //     fontWeight: FontWeight.w700),
                subtitle: const Text("94 KB • Oct 08, 2024 | 01:05 PM", style: TextStyle(
                    color: AppColor.cadetGrey,
                    fontWeight: FontWeight.w700),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/images/edit.png"),
                    const SizedBox(width:16),
                    Image.asset("assets/images/trash.png"),
                  ],
                ),
              ),
              // const Text(
              //   "Magic Tricks.pdf",
              //   style: TextStyle(
              //       fontSize: 14.0,
              //       color: AppColor.coolBlack,
              //       fontWeight: FontWeight.w700),
              // ),
            ],
          ),
        );
      },
      itemCount: 5,
    );
  }
}