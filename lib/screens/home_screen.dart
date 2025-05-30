import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';

import '../base/res/media.dart';
import '../base/res/styles/app_styles.dart';
import '../base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //Column
    //ListView
    //ListView.builder
    //Expand

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning",
                            style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        Text("Book Tickets",
                            style: AppStyles.headLineStyle1)
                      ],
                    ),
                    Container(
                      //color: Colors.red,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo)
                        ),
                        borderRadius: BorderRadius.circular(10),
                      )
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const AppDoubleText(bigText: 'Upcoming flights', smallText: 'View all'),
                const SizedBox(height: 20),
                TicketView(),
                const SizedBox(height: 40),
                const AppDoubleText(bigText: 'Upcoming meetings', smallText: 'View all'),
              ],
            ),
          ),
        ],
      )
    );
  }
}