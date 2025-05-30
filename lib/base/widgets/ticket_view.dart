import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 229,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  //show departure/destination with icons first line
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleThird(text: "NYC"),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(child: Stack(children:[
                        const SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(randomDivider: 6)
                        ),
                        Center(child: Transform.rotate(angle: 1.57,
                            child: const Icon(Icons.local_airport_rounded, color: Colors.white)))
                      ])),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: "LDN"),
                    ],
                  ),
                  //show departure/destination names with time
                  SizedBox(height: 3),
                  //show departure/destination with icons first line
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "New-York"),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: "08h 30M"),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "London", align: TextAlign.end),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //circles and dots
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  const BigCircle(position: false),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 10, width: 6)),
                  const BigCircle(position: true)
                ],
              )
            ),
            //orange part ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  //show departure/destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(topText: "1 May", bottomText: "Date", alignment: CrossAxisAlignment.start),
                      AppColumnTextLayout(topText: "08:00 AM", bottomText: "Departure time", alignment: CrossAxisAlignment.center),
                      AppColumnTextLayout(topText: "23", bottomText: "Number", alignment: CrossAxisAlignment.end),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
